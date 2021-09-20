//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct TextFieldGUIComponentSettings:
    GUIComponentSettings {

    public typealias GUIElementComponentStylePropertiesOverwrittenType =
        EmptyGUIComponentStylePropertiesOverwritten

    public let params: TextFieldGUIComponentParams
    public var style: GUIElementComponentStyle<
        TextFieldGUIComponentStyleProperties
    >
    
    public init(
        params: TextFieldGUIComponentParams,
        style: GUIElementComponentStyle<
            TextFieldGUIComponentStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: GUIElementComponentStyle<
        TextFieldGUIComponentStyleProperties
    >? {
        return styleFactory?.textField()
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        TextFieldGUIComponentStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.textField()
    }
}
