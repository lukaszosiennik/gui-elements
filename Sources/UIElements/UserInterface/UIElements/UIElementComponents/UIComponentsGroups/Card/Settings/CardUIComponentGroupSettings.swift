//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CardUIComponentGroupSettings: UIComponentGroupSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentGroupStylePropertiesOverwritten
    
    public let params: CardUIComponentGroupParams
    public var stylePack: UIElementComponentStylePack<CardUIComponentGroupStyleProperties>
    
    public init(params: CardUIComponentGroupParams, stylePack: UIElementComponentStylePack<CardUIComponentGroupStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static var stylePack: UIElementComponentStylePack<CardUIComponentGroupStyleProperties>? {
        return Self.stylePackFactory?.card()
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<CardUIComponentGroupStyleProperties>? {
        return Self.stylePackFactory(for: styleType)?.card()
    }
}
