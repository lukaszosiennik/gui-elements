//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIElementComponentStyle<
    PropertiesType:
        UIElementComponentStyleProperties
>:
    UIElementStyle {
    
    public let type: UIStyleType
    let properties: PropertiesType
    
    public init(
        properties: PropertiesType
    ) {
        self.type = .custom
        self.properties = properties
    }
    
    init(
        type: UIStyleType,
        properties: PropertiesType
    ) {
        self.type = type
        self.properties = properties
    }
    
    init(
        style: Self,
        overwrittenBy styleProperties: PropertiesType
    ) {
        self.init(
            type: style.type,
            properties: styleProperties
        )
    }
}

extension UIElementComponentStyle:
    UIPropertyDefaultValueInterface {

    public static var `default`: Self {
        return `default`(
            styleType: .os
        )
    }

    static func `default`(
        styleType: UIStyleType
    ) -> Self {
        return .init(
            type: styleType,
            properties: .default(
                styleType: styleType
            )
        )
    }
}
