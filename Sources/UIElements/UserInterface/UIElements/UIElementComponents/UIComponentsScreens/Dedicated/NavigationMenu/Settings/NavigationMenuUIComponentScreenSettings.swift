//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentScreenSettings<
    OptionKey:
        InputUIElementComponentActionsKeyInterface,
    OptionValue:
        NavigationMenuUIComponentGroupParamsOptionValueObjectInterface
>:
    UIComponentScreenSettings {
    
    public let params: NavigationMenuUIComponentScreenParams<
        OptionKey,
        OptionValue
    >
    public var style: UIElementComponentStyle<
        NavigationMenuUIComponentScreenStyleProperties
    >
    
    public init(
        params: NavigationMenuUIComponentScreenParams<
            OptionKey,
            OptionValue
        >,
        style: UIElementComponentStyle<
            NavigationMenuUIComponentScreenStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<
        NavigationMenuUIComponentScreenStyleProperties
    >? {
        return styleFactory?.navigationMenu()
    }
    
    public static func style(
        for styleType: UIStyleType
    ) -> UIElementComponentStyle<
        NavigationMenuUIComponentScreenStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.navigationMenu()
    }
}
