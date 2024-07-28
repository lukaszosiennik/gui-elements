//
//  Created by Łukasz Osiennik on 20/10/2023.
//  Copyright © 2023 Łukasz Osiennik. All rights reserved.
//

import commons

public final class NavigationMenuHierarchyDecoderProviderService:
    NavigationMenuHierarchyProviderServiceInterface {
        
    public enum ServiceError:
        Error {
        
        case nestedError(_ error: Error)
    }
    
    private let decoder: NavigationMenuGUIDataDecoder
    private let actions: NavigationMenuHierarchyActions
    
    public init(
        decoder: NavigationMenuGUIDataDecoder,
        actions: NavigationMenuHierarchyActions
    ) {
        self.decoder = decoder
        self.actions = actions
    }
    
    public func currentNode() throws -> MenuHierarchyNode {
        return try rootNode()
    }
    
    private func rootNode() throws -> MenuHierarchyNode {
        do {
            return try node(
                from: try decoder.decode()
            )
        } catch {
            throw ServiceError.nestedError(
                error
            )
        }
    }
    
    private func node(
        from menu: NavigationMenuGUIData.Menu
    ) throws -> MenuHierarchyNode {
        return .init(
            value: .init(
                strings: .init(
                    title: menu.title
                )
            ),
            childrenValue: .branch(
                children: try children(
                    from: menu.options
                )
            )
        )
    }
    
    private func children(
        from options: [NavigationMenuGUIData.Menu.Option]
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
                    from: option.kind
                )
            ))
        }
        
        return children
    }
    
    private func childrenValue(
        from optionKind: NavigationMenuGUIData.Menu.Option.Kind
    ) throws -> HierarchyNodeChildrenValueUnion<
        MenuHierarchyNode,
        MenuHierarchyNodeChildrenLeafAction
    > {
        switch optionKind {
        case .submenu(let menu):
            return .branch(
                children: try children(
                    from: menu.options
                )
            )
        case .option(let actionId):
            return .leaf(
                action: try actions[actionId] ?? actions.unlinked
            )
        }
    }
}
