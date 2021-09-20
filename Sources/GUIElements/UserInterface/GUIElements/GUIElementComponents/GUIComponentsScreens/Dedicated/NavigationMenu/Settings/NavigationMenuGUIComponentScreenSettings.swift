//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuGUIComponentScreenSettings<
    OptionKey:
        InputGUIElementComponentActionKeyInterface,
    OptionValue:
        NavigationMenuGUIElementComponentParamsOptionValueObjectInterface
>:
    GUIComponentScreenSettings {
    
    public let params: NavigationMenuGUIComponentScreenParams<
        OptionKey,
        OptionValue
    >
    public var style: GUIElementComponentStyle<
        NavigationMenuGUIComponentScreenStyleProperties
    >
    
    public init(
        params: NavigationMenuGUIComponentScreenParams<
            OptionKey,
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
