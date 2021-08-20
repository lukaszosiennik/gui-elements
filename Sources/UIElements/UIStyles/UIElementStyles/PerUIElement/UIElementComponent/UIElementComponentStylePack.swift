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
    
    init(pack: Self<StylePropertiesType>, overwrittenBy styleProperties: StylePropertiesType) {
        self.factory = pack.factory
        self.style = .init(
            type: pack.style.type,
            properties: styleProperties
        )
    }
}

extension UIElementComponentStylePack {
    
    public static var `default`: Self<StylePropertiesType> {
        return `default`(
            factory: nil,
            styleType: .os
        )
    }
    
    public static func `default`(styleType: UIStyleType) -> Self<StylePropertiesType> {
        return `default`(
            factory: nil,
            styleType: styleType
        )
    }
    
    public static func `default`(factory: UIElementStyleFactoryInterface?, styleType: UIStyleType) -> Self<StylePropertiesType> {
        return .init(
            factory: factory,
            style: UIElementComponentStyle(
                type: styleType,
                properties: .default(styleType: styleType)
            )
        )
    }
}
