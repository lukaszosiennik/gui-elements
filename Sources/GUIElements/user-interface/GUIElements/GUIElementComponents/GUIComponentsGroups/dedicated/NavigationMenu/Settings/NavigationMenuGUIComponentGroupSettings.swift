//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuGUIComponentGroupSettings<
    OptionValue:
        NavigationMenuGUIElementComponentParamsOptionValueInterface
>:
    GUIComponentGroupSettings {

    public typealias StylePropertiesOverwritten =
        NavigationMenuGUIComponentGroupStylePropertiesOverwritten
    
    public let params: NavigationMenuGUIComponentGroupParams<
        OptionValue
    >
    public var style: GUIElementComponentStyle<
        NavigationMenuGUIComponentGroupStyleProperties
    >
    
    public init(
        params: NavigationMenuGUIComponentGroupParams<
            OptionValue
        >,
        style: GUIElementComponentStyle<
            NavigationMenuGUIComponentGroupStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: GUIElementComponentStyle<
        NavigationMenuGUIComponentGroupStyleProperties
    >? {
        return styleFactory?.navigationMenu()
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        NavigationMenuGUIComponentGroupStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.navigationMenu()
    }
}
