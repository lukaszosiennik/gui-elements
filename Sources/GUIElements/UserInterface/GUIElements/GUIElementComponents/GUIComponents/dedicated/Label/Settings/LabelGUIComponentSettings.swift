//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelGUIComponentSettings:
    GUIComponentSettings {

    public typealias StylePropertiesOverwritten =
        LabelGUIComponentStylePropertiesOverwritten

    public let params: LabelGUIComponentParams
    public var style: GUIElementComponentStyle<
        LabelGUIComponentStyleProperties
    >
    
    public init(
        params: LabelGUIComponentParams,
        style: GUIElementComponentStyle<
            LabelGUIComponentStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: GUIElementComponentStyle<
        LabelGUIComponentStyleProperties
    >? {
        return styleFactory?.label()
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        LabelGUIComponentStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.label()
    }
}
