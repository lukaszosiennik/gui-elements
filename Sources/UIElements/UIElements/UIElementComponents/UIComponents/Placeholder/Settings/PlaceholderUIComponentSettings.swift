//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct PlaceholderUIComponentSettings: UIComponentSettings {
    
    public var params: PlaceholderUIComponentParams
    public var stylePack: UIElementComponentStylePack<PlaceholderUIComponentStyleProperties>
    
    public init(params: PlaceholderUIComponentParams) {
        self.init(
            params: params,
            stylePack: Self.stylePackFactory?.placeholder() ?? .default
        )
    }
    
    public init(params: PlaceholderUIComponentParams, styleType: UIStyleType) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType)
        )
    }
    
    public init(params: PlaceholderUIComponentParams, stylePack: UIElementComponentStylePack<PlaceholderUIComponentStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<PlaceholderUIComponentStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.placeholder() ?? .default
    }
}
