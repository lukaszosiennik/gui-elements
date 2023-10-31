//
//  Created by Łukasz Osiennik on 31/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuHierarchyProviderServiceInterface {
    
    func rootNode() throws -> MenuHierarchyNode
    
    func currentNode() throws -> MenuHierarchyNode
}
