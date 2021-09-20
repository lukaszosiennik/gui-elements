//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct TextAreaUIComponentSettings:
    UIComponentSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType =
        EmptyUIComponentStylePropertiesOverwritten

    public let params: TextAreaUIComponentParams
    public var style: UIElementComponentStyle<
        TextAreaUIComponentStyleProperties
    >
    
    public init(
        params: TextAreaUIComponentParams,
        style: UIElementComponentStyle<
            TextAreaUIComponentStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<
        TextAreaUIComponentStyleProperties
    >? {
        return styleFactory?.textArea()
    }
    
    public static func style(
        for styleType: UIStyleType
    ) -> UIElementComponentStyle<
        TextAreaUIComponentStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.textArea()
    }
}
