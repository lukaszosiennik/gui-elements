//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct TextFieldUIComponentSettings:
    UIComponentSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentStylePropertiesOverwritten

    public let params: TextFieldUIComponentParams
    public var style: UIElementComponentStyle<TextFieldUIComponentStyleProperties>
    
    public init(
        params: TextFieldUIComponentParams,
        style: UIElementComponentStyle<TextFieldUIComponentStyleProperties>
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<TextFieldUIComponentStyleProperties>? {
        return styleFactory?.textField()
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<TextFieldUIComponentStyleProperties>? {
        return styleFactory(for: styleType)?.textField()
    }
}
