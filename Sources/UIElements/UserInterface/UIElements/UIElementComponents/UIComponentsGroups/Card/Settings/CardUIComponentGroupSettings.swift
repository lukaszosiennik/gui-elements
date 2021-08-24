//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CardUIComponentGroupSettings: UIComponentGroupSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentGroupStylePropertiesOverwritten
    
    public let params: CardUIComponentGroupParams
    public var style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>
    
    public init(params: CardUIComponentGroupParams, style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>? {
        return Self.styleFactory?.card()
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<CardUIComponentGroupStyleProperties>? {
        return Self.styleFactory(for: styleType)?.card()
    }
}
