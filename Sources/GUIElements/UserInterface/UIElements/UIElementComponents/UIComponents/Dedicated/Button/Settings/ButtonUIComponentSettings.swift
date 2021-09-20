//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct ButtonUIComponentSettings:
    UIComponentSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType =
        EmptyUIComponentStylePropertiesOverwritten
    
    public let params: ButtonUIComponentParams
    public var style: UIElementComponentStyle<
        ButtonUIComponentStyleProperties
    >
    
    public init(
        params: ButtonUIComponentParams,
        style: UIElementComponentStyle<
            ButtonUIComponentStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<
        ButtonUIComponentStyleProperties
    >? {
        return styleFactory?.button()
    }
    
    public static func style(
        for styleType: UIStyleType
    ) -> UIElementComponentStyle<
        ButtonUIComponentStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.button()
    }
}
