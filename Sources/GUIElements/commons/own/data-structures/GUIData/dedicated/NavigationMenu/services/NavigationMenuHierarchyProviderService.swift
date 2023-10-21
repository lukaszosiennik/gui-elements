//
//  Created by Łukasz Osiennik on 20/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

import commons

public final class NavigationMenuHierarchyProviderService {
        
    public enum ServiceError:
        Error {
        
        case nestedError(_ error: Error)
    }
    
    private let decoder: NavigationMenuGUIDataDecoder
    
    public init(
        decoder: NavigationMenuGUIDataDecoder
    ) {
        self.decoder = decoder
    }
    
    public func rootNode(
        actions: NavigationMenuHierarchyActions
    ) throws -> MenuHierarchyNode {
        do {
            return try node(
                from: try decoder.decode(),
                with: actions
            )
        } catch {
            throw ServiceError.nestedError(
                error
            )
        }
    }
    
    private func node(
        from menu: NavigationMenuGUIData.Menu,
        with actions: NavigationMenuHierarchyActions
    ) throws -> MenuHierarchyNode {
        return .init(
            value: .init(
                strings: .init(
                    title: menu.title
                )
            ),
            childrenValue: .branch(
                children: try children(
                    from: menu.options,
                    with: actions
                )
            )
        )
    }
    
    private func children(
        from options: [NavigationMenuGUIData.Menu.Option],
        with actions: NavigationMenuHierarchyActions
    ) throws -> [MenuHierarchyNode] {
        var children: [MenuHierarchyNode] = []
        
        try options.forEach { option in
            children.append(.init(
                value: .init(
                    strings: .init(
                        title: option.name
                    )
                ),
                childrenValue: try childrenValue(
                    from: option.kind,
                    with: actions
                )
            ))
        }
        
        return children
    }
    
    private func childrenValue(
        from optionKind: NavigationMenuGUIData.Menu.Option.Kind,
        with actions: NavigationMenuHierarchyActions
    ) throws -> HierarchyNodeChildrenValueUnion<
        MenuHierarchyNode,
        MenuHierarchyNodeChildrenLeafAction
    > {
        switch optionKind {
        case .submenu(let menu):
            return .branch(
                children: try children(
                    from: menu.options,
                    with: actions
                )
            )
        case .option(let actionId):
            return .leaf(
                action: try actions[actionId] ?? actions.unlinked
            )
        }
    }
}
