//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuGUIElementComponentParamsInterface:
    GUIElementComponentParamsLocalizationStrings
where
    LocalizationStrings
        : NavigationMenuGUIElementComponentParamsLocalizationStringsInterface {
    
    associatedtype OptionsKeyValue:
        NavigationMenuGUIElementComponentParamsOptionsKeyValueInterface
    associatedtype ActionsFunction
    
    typealias Options =
        KeyValuePairs<
            OptionsKeyValue.Key,
            OptionsKeyValue.Value
        >
    
    var options: Options {
        get
    }
    
    var actions: ActionsFunction? {
        get
    }
}

public protocol NavigationMenuGUIElementComponentParamsLocalizationStringsInterface:
    LocalizationStringsInterface {
    
    var title: String {
        get
    }
}
