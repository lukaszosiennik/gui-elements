//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentScreenSettings: UIElementComponentSettings where
    UIElementComponentParamsType: UIComponentScreenParams,
    UIElementComponentStylePropertiesType: UIComponentScreenStyleProperties,
    UIElementComponentStylePropertiesOverwrittenType == EmptyUIComponentScreenStylePropertiesOverwritten {}

extension UIComponentScreenSettings {
    
    public static var stylePackFactory: UIComponentScreenStyleFactoryInterface? {
        return styleFactory?.uiComponentScreen
    }
    
    public static func stylePackFactory(for styleType: UIStyleType) -> UIComponentScreenStyleFactoryInterface? {
        return styleFactory(for: styleType)?.uiComponentScreen
    }
}
