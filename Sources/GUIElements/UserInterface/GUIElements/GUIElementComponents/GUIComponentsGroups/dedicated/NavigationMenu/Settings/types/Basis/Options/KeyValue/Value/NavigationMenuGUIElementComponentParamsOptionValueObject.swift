//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuGUIElementComponentParamsOptionValueObject:
    NavigationMenuGUIElementComponentParamsOptionValueObjectInterface {
    
    public let strings: LocalizationStrings
    
    public init(
        strings: LocalizationStrings
    ) {
        self.strings = strings
    }
}

extension NavigationMenuGUIElementComponentParamsOptionValueObject {
    
    public struct LocalizationStrings:
        NavigationMenuGUIElementComponentParamsOptionValueObjectLocalizationStringsInterface {
        
        public let title: String
        
        public init(
            title: String
        ) {
            self.title = title
        }
    }
}
