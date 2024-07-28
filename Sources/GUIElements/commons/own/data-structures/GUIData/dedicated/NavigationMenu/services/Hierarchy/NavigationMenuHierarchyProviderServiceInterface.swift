//
//  Created by Łukasz Osiennik on 31/10/2023.
//  Copyright © 2023 Łukasz Osiennik. All rights reserved.
//

public protocol NavigationMenuHierarchyProviderServiceInterface {
    
    func currentNode() throws -> MenuHierarchyNode
}
