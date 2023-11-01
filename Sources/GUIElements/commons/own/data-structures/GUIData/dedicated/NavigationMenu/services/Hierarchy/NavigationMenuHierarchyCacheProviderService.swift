//
//  Created by Łukasz Osiennik on 31/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

public final class NavigationMenuHierarchyCacheProviderService: 
    NavigationMenuHierarchyProviderServiceInterface {
    
    private let currentHierarchyNode: MenuHierarchyNode
    
    public init(
        currentNode: MenuHierarchyNode
    ) {
        self.currentHierarchyNode = currentNode
    }
    
    public func currentNode() throws -> MenuHierarchyNode {
        return currentHierarchyNode
    }
}
