//
//  Created by Łukasz Osiennik on 20/10/2023.
//  Copyright © 2023 Łukasz Osiennik. All rights reserved.
//

import commons

public struct MenuHierarchyNodeValue:
    HierarchyNodeValueInterface,
    GUIElementComponentParamsLocalizationStrings {
    
    public let strings: LocalizationStrings
}

extension MenuHierarchyNodeValue {
    
    public struct LocalizationStrings:
        LocalizationStringsInterface {
        
        public let title: String
    }
}
