//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentSettings: UIElementComponentSettings where
    UIElementComponentParamsType: UIComponentParams,
    UIElementComponentStylePropertiesType: UIComponentStyleProperties {
    
    static var stylePackFactory: UIComponentStyleFactoryInterface? { get }
    static func stylePackFactory(for styleType: UIStyleType) -> UIComponentStyleFactoryInterface?
}

extension UIComponentSettings {
    
    public static var stylePackFactory: UIComponentStyleFactoryInterface? {
        return styleFactory?.uiComponent
    }
    
    public static func stylePackFactory(for styleType: UIStyleType) -> UIComponentStyleFactoryInterface? {
        return styleFactory(for: styleType)?.uiComponent
    }
}
