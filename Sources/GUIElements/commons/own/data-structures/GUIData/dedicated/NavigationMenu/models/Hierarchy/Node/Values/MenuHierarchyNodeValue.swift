//
//  Created by Łukasz Osiennik on 20/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
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

extension MenuHierarchyNodeValue.LocalizationStrings {
    
    public static var fatalError: Self {
        .init(
            title: "fatalError"
        )
    }
}
