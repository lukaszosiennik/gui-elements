//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentSettings:
    UIElementComponentSettings
where
    UIElementComponentParamsType: UIComponentParams,
    UIElementComponentStylePropertiesType: UIComponentStyleProperties,
    UIElementComponentStylePropertiesOverwrittenType: UIComponentStylePropertiesOverwritten {}

extension UIComponentSettings {
        
    public static var styleFactory: UIComponentStyleFactoryInterface? {
        return mainStyleFactory?.uiComponent
    }
    
    public static func styleFactory(for styleType: UIStyleType) -> UIComponentStyleFactoryInterface? {
        return mainStyleFactory(for: styleType)?.uiComponent
    }
}
