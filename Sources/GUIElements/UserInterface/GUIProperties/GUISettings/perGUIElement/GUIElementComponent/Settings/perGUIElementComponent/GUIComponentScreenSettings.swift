//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentScreenSettings:
    GUIElementComponentSettings
where
    Params
        : GUIComponentScreenParams,
    StyleProperties
        : GUIComponentScreenStyleProperties,
    StylePropertiesOverwritten
        == EmptyGUIComponentScreenStylePropertiesOverwritten {}

extension GUIComponentScreenSettings {
    
    public static var styleFactory: GUIComponentScreenStyleFactoryInterface? {
        return mainStyleFactory?.uiComponentScreen
    }
    
    public static func styleFactory(
        for styleType: GUIStyleType
    ) -> GUIComponentScreenStyleFactoryInterface? {
        return mainStyleFactory(
            for: styleType
        )?.uiComponentScreen
    }
}
