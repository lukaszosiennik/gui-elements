//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentGroupSettings: UIElementComponentSettings where
    UIElementComponentParamsType: UIComponentGroupParams,
    UIElementComponentStylePropertiesType: UIComponentGroupStyleProperties {
    
    static var stylePackFactory: UIComponentGroupStyleFactoryInterface? { get }
    static func stylePackFactory(for styleType: UIStyleType) -> UIComponentGroupStyleFactoryInterface?
}

extension UIComponentGroupSettings {
    
    public static var stylePackFactory: UIComponentGroupStyleFactoryInterface? {
        return styleFactory?.uiComponentGroup
    }
    
    public static func stylePackFactory(for styleType: UIStyleType) -> UIComponentGroupStyleFactoryInterface? {
        return styleFactory(for: styleType)?.uiComponentGroup
    }
}
