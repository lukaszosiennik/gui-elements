//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CardUIComponentGroupSettings: UIComponentGroupSettings {
    
    public var params: CardUIComponentGroupParams
    public var stylePack: UIElementComponentStylePack<CardUIComponentGroupStyleProperties>
    
    public init(params: CardUIComponentGroupParams) {
        self.init(
            params: params,
            stylePack: Self.stylePackFactory?.card() ?? .default
        )
    }
    
    public init(params: CardUIComponentGroupParams, styleType: UIStyleType) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType)
        )
    }
    
    public init(params: CardUIComponentGroupParams, stylePack: UIElementComponentStylePack<CardUIComponentGroupStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<CardUIComponentGroupStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.card() ?? .default(styleType: styleType)
    }
}
