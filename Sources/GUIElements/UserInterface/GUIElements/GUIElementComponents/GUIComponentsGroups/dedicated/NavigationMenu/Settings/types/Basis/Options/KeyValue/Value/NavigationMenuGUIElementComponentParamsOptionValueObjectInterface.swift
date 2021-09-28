//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuGUIElementComponentParamsOptionValueObjectInterface:
    GUIElementComponentParamsLocalizationStrings
where
    LocalizationStrings
        : NavigationMenuGUIElementComponentParamsOptionValueObjectLocalizationStringsInterface {}

public protocol NavigationMenuGUIElementComponentParamsOptionValueObjectLocalizationStringsInterface:
    LocalizationStringsInterface {
    
    var title: String {
        get
    }
}
