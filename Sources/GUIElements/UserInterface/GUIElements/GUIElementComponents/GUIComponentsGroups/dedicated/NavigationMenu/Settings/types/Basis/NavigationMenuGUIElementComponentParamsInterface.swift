//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuGUIElementComponentParamsInterface:
    GUIElementComponentParamsLocalizationStrings
where
    LocalizationStrings
        : NavigationMenuGUIElementComponentParamsLocalizationStringsInterface {
    
    associatedtype Option:
        NavigationMenuGUIElementComponentParamsOptionInterface
    
    typealias Options =
        Array<
            Option.Value
        >
    
    var options: Options {
        get
    }
}

public protocol NavigationMenuGUIElementComponentParamsLocalizationStringsInterface:
    LocalizationStringsInterface {
    
    var title: String {
        get
    }
}
