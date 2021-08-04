//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIComponentGroupSettings: UIElementComponentSettings where
    UIElementComponentParamsType: UIComponentGroupParams,
    UIElementComponentStylePropertiesType: UIComponentGroupStyleProperties {
    
    static var stylePackFactory: UIComponentGroupStyleFactoryInterface? { get }
    static func stylePackFactory(for styleType: UIStyleType) -> UIComponentGroupStyleFactoryInterface?
}

extension UIComponentGroupSettings {
    
    static var stylePackFactory: UIComponentGroupStyleFactoryInterface? {
        return styleFactory?.uiComponentGroup
    }
    
    static func stylePackFactory(for styleType: UIStyleType) -> UIComponentGroupStyleFactoryInterface? {
        return styleFactory(for: styleType)?.uiComponentGroup
    }
}
