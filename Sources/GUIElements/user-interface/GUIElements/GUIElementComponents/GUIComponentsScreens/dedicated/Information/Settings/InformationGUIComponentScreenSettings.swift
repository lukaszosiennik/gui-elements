//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct InformationGUIComponentScreenSettings:
    GUIComponentScreenSettings {
    
    public let params: InformationGUIComponentScreenParams
    public var style: GUIElementComponentStyle<
        InformationGUIComponentScreenStyleProperties
    >
    
    public init(
        params: InformationGUIComponentScreenParams,
        style: GUIElementComponentStyle<
            InformationGUIComponentScreenStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: GUIElementComponentStyle<
        InformationGUIComponentScreenStyleProperties
    >? {
        return styleFactory?.information()
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        InformationGUIComponentScreenStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.information()
    }
}
