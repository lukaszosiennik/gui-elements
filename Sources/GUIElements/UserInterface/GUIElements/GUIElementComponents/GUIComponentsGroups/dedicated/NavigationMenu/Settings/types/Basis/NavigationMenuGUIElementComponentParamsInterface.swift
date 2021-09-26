//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuGUIElementComponentParamsInterface:
    GUIElementComponentParamsLocalizationStrings
where
    LocalizationStrings
        : NavigationMenuGUIElementComponentParamsLocalizationStringsInterface {
    
    associatedtype OptionsKeyValueType:
        NavigationMenuGUIElementComponentParamsOptionsKeyValueInterface
    associatedtype ActionsFunctionType
    
    typealias Options =
        KeyValuePairs<
            OptionsKeyValueType.KeyType,
            OptionsKeyValueType.ValueType
        >
    
    var options: Options {
        get
    }
    
    var actions: ActionsFunctionType? {
        get
    }
}

public protocol NavigationMenuGUIElementComponentParamsLocalizationStringsInterface {
    
    var title: String {
        get
    }
}
