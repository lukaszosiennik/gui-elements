//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct GUIElementComponentStyle<
    PropertiesType:
        GUIElementComponentStyleProperties
>:
    GUIElementStyle {
    
    public let type: GUIStyleType
    let properties: PropertiesType
    
    public init(
        properties: PropertiesType
    ) {
        self.type = .custom
        self.properties = properties
    }
    
    init(
        type: GUIStyleType,
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

extension GUIElementComponentStyle:
    GUIPropertyDefaultValueInterface {

    public static var `default`: Self {
        return `default`(
            styleType: .os
        )
    }

    static func `default`(
        styleType: GUIStyleType
    ) -> Self {
        return .init(
            type: styleType,
            properties: .default(
                styleType: styleType
            )
        )
    }
}
