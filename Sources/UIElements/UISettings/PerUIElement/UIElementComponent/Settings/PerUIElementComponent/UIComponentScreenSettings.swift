//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIComponentScreenSettings: UIElementComponentSettings where
    UIElementComponentParamsType: UIComponentScreenParams,
    UIElementComponentStylePropertiesType: UIComponentScreenStyleProperties {
    
    static var stylePackFactory: UIComponentScreenStyleFactoryInterface? { get }
    static func stylePackFactory(for styleType: UIStyleType) -> UIComponentScreenStyleFactoryInterface?
}

extension UIComponentScreenSettings {
    
    static var stylePackFactory: UIComponentScreenStyleFactoryInterface? {
        return styleFactory?.uiComponentScreen
    }
    
    static func stylePackFactory(for styleType: UIStyleType) -> UIComponentScreenStyleFactoryInterface? {
        return styleFactory(for: styleType)?.uiComponentScreen
    }
}
