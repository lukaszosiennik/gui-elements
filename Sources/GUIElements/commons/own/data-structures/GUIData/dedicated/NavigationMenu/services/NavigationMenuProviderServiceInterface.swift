//
//  Created by Łukasz Osiennik on 21/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuProviderServiceInterface {
    
    var hierarchyProviderService: NavigationMenuHierarchyProviderServiceInterface {
        get
    }
    
    init(
        hierarchyProviderService: NavigationMenuHierarchyProviderServiceInterface
    )
    
    var rootNode: MenuHierarchyNode {
        get
    }
    
    var currentNode: MenuHierarchyNode {
        get
    }
}

extension NavigationMenuProviderServiceInterface {
    
    public var rootNode: MenuHierarchyNode {
        do {
            return try hierarchyProviderService.rootNode()
        } catch {
            return .init(
                value: .fatalError
            )
        }
    }
    
    public var currentNode: MenuHierarchyNode {
        do {
            return try hierarchyProviderService.currentNode()
        } catch {
            return .init(
                value: .fatalError
            )
        }
    }
}
