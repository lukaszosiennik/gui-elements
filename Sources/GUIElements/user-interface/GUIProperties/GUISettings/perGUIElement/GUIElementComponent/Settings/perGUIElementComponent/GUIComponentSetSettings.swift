//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentSetSettings:
    GUIElementComponentSettings
where
    Params
        : GUIComponentSetParams,
    StyleProperties
        : GUIComponentSetStyleProperties,
    StylePropertiesOverwritten
        : GUIComponentSetStylePropertiesOverwritten {}

extension GUIComponentSetSettings {
    
    public static var styleFactory: GUIComponentSetStyleFactoryInterface? {
        return mainStyleFactory?.uiComponentSet
    }
    
    public static func styleFactory(
        for styleType: GUIStyleType
    ) -> GUIComponentSetStyleFactoryInterface? {
        return mainStyleFactory(
            for: styleType
        )?.uiComponentSet
    }
}
