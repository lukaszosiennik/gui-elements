//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentGroupSettings:
    GUIElementComponentSettings
where
    GUIElementComponentParamsType
        : GUIComponentGroupParams,
    GUIElementComponentStylePropertiesType
        : GUIComponentGroupStyleProperties,
    GUIElementComponentStylePropertiesOverwrittenType
        : GUIComponentGroupStylePropertiesOverwritten {}

extension GUIComponentGroupSettings {
    
    public static var styleFactory: GUIComponentGroupStyleFactoryInterface? {
        return mainStyleFactory?.uiComponentGroup
    }
    
    public static func styleFactory(
        for styleType: GUIStyleType
    ) -> GUIComponentGroupStyleFactoryInterface? {
        return mainStyleFactory(
            for: styleType
        )?.uiComponentGroup
    }
}
