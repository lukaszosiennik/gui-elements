//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct PlaceholderUIComponentSettings: UIComponentSettings {
    
    public typealias UIComponentStylePropertiesOverwrittenType = EmptyUIComponentStylePropertiesOverwritten
    
    public let params: PlaceholderUIComponentParams
    public var stylePack: UIElementComponentStylePack<PlaceholderUIComponentStyleProperties>
    
    public init(params: PlaceholderUIComponentParams, stylePack: UIElementComponentStylePack<PlaceholderUIComponentStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static var stylePack: UIElementComponentStylePack<PlaceholderUIComponentStyleProperties>? {
        return Self.stylePackFactory?.placeholder()
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<PlaceholderUIComponentStyleProperties>? {
        return Self.stylePackFactory(for: styleType)?.placeholder()
    }
}
