//
//  Created by Łukasz Osiennik on 20/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

import commons

struct MenuHierarchyNodeValue:
    HierarchyNodeValueInterface,
    GUIElementComponentParamsLocalizationStrings {
    
    let strings: LocalizationStrings
}

extension MenuHierarchyNodeValue {
    
    struct LocalizationStrings:
        LocalizationStringsInterface {
        
        let title: String
    }
}
