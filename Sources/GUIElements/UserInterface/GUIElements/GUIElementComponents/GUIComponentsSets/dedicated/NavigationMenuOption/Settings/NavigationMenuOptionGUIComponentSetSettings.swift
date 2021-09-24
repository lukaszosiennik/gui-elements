//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuOptionGUIComponentSetSettings:
    GUIComponentSetSettings {
    
    public typealias GUIElementComponentStylePropertiesOverwrittenType =
        EmptyGUIComponentSetStylePropertiesOverwritten
    
    public let params: NavigationMenuOptionGUIComponentSetParams
    public var style: GUIElementComponentStyle<
        NavigationMenuOptionGUIComponentSetStyleProperties
    >
    
    public init(
        params: NavigationMenuOptionGUIComponentSetParams,
        style: GUIElementComponentStyle<
            NavigationMenuOptionGUIComponentSetStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: GUIElementComponentStyle<
        NavigationMenuOptionGUIComponentSetStyleProperties
    >? {
        return styleFactory?.navigationMenuOption()
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        NavigationMenuOptionGUIComponentSetStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.navigationMenuOption()
    }
}
