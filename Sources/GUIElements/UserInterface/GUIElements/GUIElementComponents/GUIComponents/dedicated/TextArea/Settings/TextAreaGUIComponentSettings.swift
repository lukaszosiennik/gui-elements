//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct TextAreaGUIComponentSettings:
    GUIComponentSettings {

    public typealias StylePropertiesOverwritten =
        EmptyGUIComponentStylePropertiesOverwritten

    public let params: TextAreaGUIComponentParams
    public var style: GUIElementComponentStyle<
        TextAreaGUIComponentStyleProperties
    >
    
    public init(
        params: TextAreaGUIComponentParams,
        style: GUIElementComponentStyle<
            TextAreaGUIComponentStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: GUIElementComponentStyle<
        TextAreaGUIComponentStyleProperties
    >? {
        return styleFactory?.textArea()
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        TextAreaGUIComponentStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.textArea()
    }
}
