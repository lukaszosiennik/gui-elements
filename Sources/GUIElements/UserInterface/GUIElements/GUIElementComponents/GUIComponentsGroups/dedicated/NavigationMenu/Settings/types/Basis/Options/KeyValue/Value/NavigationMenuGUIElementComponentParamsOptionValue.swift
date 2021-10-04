//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuGUIElementComponentParamsOptionValue:
    NavigationMenuGUIElementComponentParamsOptionValueInterface {
    
    public let strings: LocalizationStrings
    
    public let action: Action?
    
    public init(
        strings: LocalizationStrings,
        action: Action?
    ) {
        self.strings = strings
        self.action = action
    }
}

extension NavigationMenuGUIElementComponentParamsOptionValue {
    
    public struct LocalizationStrings:
        NavigationMenuGUIElementComponentParamsOptionValueLocalizationStringsInterface {
        
        public let title: String
        
        public init(
            title: String
        ) {
            self.title = title
        }
    }
}
