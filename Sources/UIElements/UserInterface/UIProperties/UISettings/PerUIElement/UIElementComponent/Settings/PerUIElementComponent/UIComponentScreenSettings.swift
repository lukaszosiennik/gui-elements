//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentScreenSettings:
    UIElementComponentSettings
where
    UIElementComponentParamsType
        : UIComponentScreenParams,
    UIElementComponentStylePropertiesType
        : UIComponentScreenStyleProperties,
    UIElementComponentStylePropertiesOverwrittenType
        == EmptyUIComponentScreenStylePropertiesOverwritten {}

extension UIComponentScreenSettings {
    
    public static var styleFactory: UIComponentScreenStyleFactoryInterface? {
        return mainStyleFactory?.uiComponentScreen
    }
    
    public static func styleFactory(
        for styleType: UIStyleType
    ) -> UIComponentScreenStyleFactoryInterface? {
        return mainStyleFactory(
            for: styleType
        )?.uiComponentScreen
    }
}
