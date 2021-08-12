//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIElementComponentStylePack<StylePropertiesType: UIElementComponentStyleProperties> {
    
    let factory: UIElementStyleFactoryInterface?
    let style: UIElementComponentStyle<StylePropertiesType>
    
    init(factory: UIElementStyleFactoryInterface?, style: UIElementComponentStyle<StylePropertiesType>) {
        self.factory = factory
        self.style = style
    }
    
    init(pack: UIElementComponentStylePack<StylePropertiesType>, overwrittenBy styleProperties: StylePropertiesType) {
        self.factory = pack.factory
        self.style = .init(
            type: pack.style.type,
            properties: styleProperties
        )
    }
}

extension UIElementComponentStylePack {
    
    public static var `default`: UIElementComponentStylePack<StylePropertiesType> {
        return `default`(factory: nil, styleType: .os(false))
    }
    
    public static func `default`(styleType: UIStyleType) -> UIElementComponentStylePack<StylePropertiesType> {
        return `default`(factory: nil, styleType: styleType)
    }
    
    public static func `default`(factory: UIElementStyleFactoryInterface?, styleType: UIStyleType) -> UIElementComponentStylePack<StylePropertiesType> {
        return UIElementComponentStylePack<StylePropertiesType>(
            factory: factory,
            style: UIElementComponentStyle(
                type: styleType,
                properties: nil
            )
        )
    }
}
