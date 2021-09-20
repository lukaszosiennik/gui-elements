//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct ButtonGUIComponentSettings:
    GUIComponentSettings {

    public typealias GUIElementComponentStylePropertiesOverwrittenType =
        EmptyGUIComponentStylePropertiesOverwritten
    
    public let params: ButtonGUIComponentParams
    public var style: GUIElementComponentStyle<
        ButtonGUIComponentStyleProperties
    >
    
    public init(
        params: ButtonGUIComponentParams,
        style: GUIElementComponentStyle<
            ButtonGUIComponentStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: GUIElementComponentStyle<
        ButtonGUIComponentStyleProperties
    >? {
        return styleFactory?.button()
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        ButtonGUIComponentStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.button()
    }
}
