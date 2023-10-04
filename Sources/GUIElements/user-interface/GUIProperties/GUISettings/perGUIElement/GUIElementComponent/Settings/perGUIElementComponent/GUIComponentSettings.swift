//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentSettings:
    GUIElementComponentSettings
where
    Params
        : GUIComponentParams,
    StyleProperties
        : GUIComponentStyleProperties,
    StylePropertiesOverwritten
        : GUIComponentStylePropertiesOverwritten {}

extension GUIComponentSettings {
        
    public static var styleFactory: GUIComponentStyleFactoryInterface? {
        return mainStyleFactory?.uiComponent
    }
    
    public static func styleFactory(
        for styleType: GUIStyleType
    ) -> GUIComponentStyleFactoryInterface? {
        return mainStyleFactory(
            for: styleType
        )?.uiComponent
    }
}
