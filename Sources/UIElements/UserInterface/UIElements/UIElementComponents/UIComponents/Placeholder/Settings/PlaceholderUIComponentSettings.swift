//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct PlaceholderUIComponentSettings: UIComponentSettings {
    
    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentStylePropertiesOverwritten
    
    public let params: PlaceholderUIComponentParams
    public var style: UIElementComponentStyle<PlaceholderUIComponentStyleProperties>
    
    public init(params: PlaceholderUIComponentParams, style: UIElementComponentStyle<PlaceholderUIComponentStyleProperties>) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<PlaceholderUIComponentStyleProperties>? {
        return Self.styleFactory?.placeholder()
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<PlaceholderUIComponentStyleProperties>? {
        return Self.styleFactory(for: styleType)?.placeholder()
    }
}
