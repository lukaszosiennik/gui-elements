//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIComponentSetSettings: UIElementComponentSettings where
    UIElementComponentParamsType: UIComponentSetParams,
    UIElementComponentStylePropertiesType: UIComponentSetStyleProperties {
    
    static var stylePackFactory: UIComponentSetStyleFactoryInterface? { get }
    static func stylePackFactory(for styleType: UIStyleType) -> UIComponentSetStyleFactoryInterface?
}

extension UIComponentSetSettings {
    
    static var stylePackFactory: UIComponentSetStyleFactoryInterface? {
        return styleFactory?.uiComponentSet
    }
    
    static func stylePackFactory(for styleType: UIStyleType) -> UIComponentSetStyleFactoryInterface? {
        return styleFactory(for: styleType)?.uiComponentSet
    }
}
