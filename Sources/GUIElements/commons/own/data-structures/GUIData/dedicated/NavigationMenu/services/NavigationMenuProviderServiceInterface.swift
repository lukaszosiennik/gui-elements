//
//  Created by Łukasz Osiennik on 21/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuProviderServiceInterface {
    
    var hierarchyProviderService: NavigationMenuHierarchyProviderService {
        get
    }
    
    var hierarchyActions: NavigationMenuHierarchyActions {
        get
    }
    
    init(
        hierarchyProviderService: NavigationMenuHierarchyProviderService,
        hierarchyActions: NavigationMenuHierarchyActions
    )
    
    func rootNode(
        styleType: GUIStyleType
    ) -> MenuHierarchyNode
    
    func rootNodeThrows(
        styleType: GUIStyleType
    ) throws -> MenuHierarchyNode
}

extension NavigationMenuProviderServiceInterface {
    
    public func rootNode(
        styleType: GUIStyleType
    ) -> MenuHierarchyNode {
        do {
            return try rootNodeThrows(
                styleType: styleType
            )
        } catch {
            return .init(
                value: .fatalError
            )
        }
    }
    
    public func rootNodeThrows(
        styleType: GUIStyleType
    ) throws -> MenuHierarchyNode {
        return try hierarchyProviderService.rootNode(
            styleType: styleType,
            actions: hierarchyActions
        )
    }
}
