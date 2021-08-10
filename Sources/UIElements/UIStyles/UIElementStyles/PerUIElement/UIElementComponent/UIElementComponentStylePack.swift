//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIElementComponentStylePack<StylePropertiesType: UIElementComponentStyleProperties> {
    
    let factory: UIElementStyleFactoryInterface?
    let style: UIElementComponentStyle<StylePropertiesType>
}

extension UIElementComponentStylePack {
    
    public static var `default`: UIElementComponentStylePack<StylePropertiesType> {
        return `default`(factory: nil)
    }
    
    public static func `default`(factory: UIElementStyleFactoryInterface?) -> UIElementComponentStylePack<StylePropertiesType> {
        return UIElementComponentStylePack<StylePropertiesType>(
            factory: factory,
            style: UIElementComponentStyle(
                type: .os(true), // TODO: need to be get from Settings init styleType
                properties: nil
            )
        )
    }
}
