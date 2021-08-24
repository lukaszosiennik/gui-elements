//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIElementComponentStylePack<StylePropertiesType: UIElementComponentStyleProperties> {
    
    let style: UIElementComponentStyle<StylePropertiesType>
    
    init(style: UIElementComponentStyle<StylePropertiesType>) {
        self.style = style
    }
    
    init(pack: Self, overwrittenBy styleProperties: StylePropertiesType) {
        self.style = .init(
            type: pack.style.type,
            properties: styleProperties
        )
    }
}

extension UIElementComponentStylePack: UIPropertyDefaultValueInterface {
    
    public static var `default`: Self {
        return `default`(
            styleType: .os
        )
    }
    
    public static func `default`(styleType: UIStyleType) -> Self {
        return .init(
            style: .init(
                type: styleType,
                properties: .default(
                    styleType: styleType
                )
            )
        )
    }
}

extension UIElementComponentStylePack {
    
    var styleProperties: StylePropertiesType {
        return style.properties
    }
}
