//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuOptionUIComponentSetSettings: UIComponentSetSettings {
    
    public var params: NavigationMenuOptionUIComponentSetParams
    public var stylePack: UIElementComponentStylePack<NavigationMenuOptionUIComponentSetStyleProperties>
    
    public init(params: NavigationMenuOptionUIComponentSetParams) {
        self.init(
            params: params,
            stylePack: Self.stylePackFactory?.navigationMenuOption() ?? .default
        )
    }
    
    public init(params: NavigationMenuOptionUIComponentSetParams, styleType: UIStyleType) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType)
        )
    }
    
    public init(params: NavigationMenuOptionUIComponentSetParams, stylePack: UIElementComponentStylePack<NavigationMenuOptionUIComponentSetStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<NavigationMenuOptionUIComponentSetStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.navigationMenuOption() ?? .default(styleType: styleType)
    }
}
