//
//  Created by Łukasz Osiennik on 31/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

public final class NavigationMenuHierarchyCacheProviderService: 
    NavigationMenuHierarchyProviderServiceInterface {
    
    private let rootHierarchyNode: MenuHierarchyNode
    private let currentHierarchyNode: MenuHierarchyNode
    
    public init(
        rootNode: MenuHierarchyNode,
        currentNode: MenuHierarchyNode
    ) {
        self.rootHierarchyNode = rootNode
        self.currentHierarchyNode = currentNode
    }
    
    public func rootNode() throws -> MenuHierarchyNode {
        return rootHierarchyNode
    }
    
    public func currentNode() throws -> MenuHierarchyNode {
        return currentHierarchyNode
    }
}
