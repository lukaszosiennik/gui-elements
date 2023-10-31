//
//  Created by Łukasz Osiennik on 21/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

public final class NavigationMenuProviderServiceTemplate:
    NavigationMenuProviderServiceInterface {
 
    public let hierarchyProviderService: NavigationMenuHierarchyProviderServiceInterface
    
    public init(
        hierarchyProviderService: NavigationMenuHierarchyProviderServiceInterface
    ) {
        self.hierarchyProviderService = hierarchyProviderService
    }
}
