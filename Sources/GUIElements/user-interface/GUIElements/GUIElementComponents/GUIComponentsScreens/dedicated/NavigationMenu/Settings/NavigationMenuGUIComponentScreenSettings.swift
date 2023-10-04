//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuGUIComponentScreenSettings<
    OptionValue:
        NavigationMenuGUIElementComponentParamsOptionValueInterface
>:
    GUIComponentScreenSettings {
    
    public let params: NavigationMenuGUIComponentScreenParams<
        OptionValue
    >
    public var style: GUIElementComponentStyle<
        NavigationMenuGUIComponentScreenStyleProperties
    >
    
    public init(
        params: NavigationMenuGUIComponentScreenParams<
            OptionValue
        >,
        style: GUIElementComponentStyle<
            NavigationMenuGUIComponentScreenStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: GUIElementComponentStyle<
        NavigationMenuGUIComponentScreenStyleProperties
    >? {
        return styleFactory?.navigationMenu()
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        NavigationMenuGUIComponentScreenStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.navigationMenu()
    }
}
