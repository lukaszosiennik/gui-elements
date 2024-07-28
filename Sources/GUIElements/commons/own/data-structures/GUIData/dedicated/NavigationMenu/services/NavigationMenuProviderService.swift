//
//  Created by Łukasz Osiennik on 21/10/2023.
//  Copyright © 2023 Łukasz Osiennik. All rights reserved.
//

public final class NavigationMenuProviderService {
 
    private let hierarchyProviderService: NavigationMenuHierarchyProviderServiceInterface
    
    public init(
        hierarchyProviderService: NavigationMenuHierarchyProviderServiceInterface
    ) {
        self.hierarchyProviderService = hierarchyProviderService
    }
    
    public var currentNode: MenuHierarchyNode {
        do {
            return try hierarchyProviderService.currentNode()
        } catch {
            return .init(
                value: .initAsFatalError
            )
        }
    }
}
