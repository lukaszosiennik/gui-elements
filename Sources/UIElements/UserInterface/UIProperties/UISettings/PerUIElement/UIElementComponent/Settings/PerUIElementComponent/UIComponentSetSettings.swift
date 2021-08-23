//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentSetSettings: UIElementComponentSettings where
    UIElementComponentParamsType: UIComponentSetParams,
    UIElementComponentStylePropertiesType: UIComponentSetStyleProperties,
    UIElementComponentStylePropertiesOverwrittenType: UIComponentSetStylePropertiesOverwritten {}

extension UIComponentSetSettings {
    
    public static var stylePackFactory: UIComponentSetStyleFactoryInterface? {
        return styleFactory?.uiComponentSet
    }
    
    public static func stylePackFactory(for styleType: UIStyleType) -> UIComponentSetStyleFactoryInterface? {
        return styleFactory(for: styleType)?.uiComponentSet
    }
}
