//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct ButtonUIComponentSettings: UIComponentSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentStylePropertiesOverwritten
    
    public let params: ButtonUIComponentParams
    public var stylePack: UIElementComponentStylePack<ButtonUIComponentStyleProperties>
    
    public init(params: ButtonUIComponentParams, stylePack: UIElementComponentStylePack<ButtonUIComponentStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static var stylePack: UIElementComponentStylePack<ButtonUIComponentStyleProperties>? {
        return Self.stylePackFactory?.button()
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<ButtonUIComponentStyleProperties>? {
        return Self.stylePackFactory(for: styleType)?.button()
    }
}
