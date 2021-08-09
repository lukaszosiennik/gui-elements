//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentGroupSettings<OptionKey: InputUIElementComponentActionsKeyInterface>: UIComponentGroupSettings {
    
    public var params: NavigationMenuUIComponentGroupParams<OptionKey>
    public var stylePack: UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties>
    
    public init(params: NavigationMenuUIComponentGroupParams<OptionKey>) {
        self.init(params: params, stylePack: Self.stylePackFactory?.navigationMenu() ?? .default)
    }
    
    public init(params: NavigationMenuUIComponentGroupParams<OptionKey>, styleType: UIStyleType) {
        self.init(params: params, stylePack: Self.stylePack(for: styleType))
    }
    
    public init(params: NavigationMenuUIComponentGroupParams<OptionKey>, stylePack: UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.navigationMenu() ?? .default
    }
}
