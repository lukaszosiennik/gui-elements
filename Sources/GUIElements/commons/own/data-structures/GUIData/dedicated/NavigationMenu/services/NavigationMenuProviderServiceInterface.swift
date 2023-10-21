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
    
    var rootNode: MenuHierarchyNode {
        get
    }
    
    func rootNodeThrows() throws -> MenuHierarchyNode
}

extension NavigationMenuProviderServiceInterface {
    
    public var rootNode: MenuHierarchyNode {
        do {
            return try rootNodeThrows()
        } catch {
            return .init(
                value: .fatalError
            )
        }
    }
    
    public func rootNodeThrows() throws -> MenuHierarchyNode {
        return try hierarchyProviderService.rootNode(
            actions: hierarchyActions
        )
    }
}
