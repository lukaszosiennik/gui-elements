//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol NavigationMenuGUIElementComponentParamsOptionValueInterface:
    GUIElementComponentParamsLocalizationStrings
where
    LocalizationStrings
        : NavigationMenuGUIElementComponentParamsOptionValueLocalizationStringsInterface {
            
    typealias Action =
        () -> Void
    
    var action: Action? {
        get
    }
}

public protocol NavigationMenuGUIElementComponentParamsOptionValueLocalizationStringsInterface:
    LocalizationStringsInterface {
    
    var title: String {
        get
    }
}
