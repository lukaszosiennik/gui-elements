//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentScreenSettings<OptionKey: InputUIElementComponentActionsKeyInterface>: UIComponentScreenSettings {
    
    public var params: NavigationMenuUIComponentScreenParams<OptionKey>
    public var stylePack: UIElementComponentStylePack<NavigationMenuUIComponentScreenStyleProperties>
    
    public init(params: NavigationMenuUIComponentScreenParams<OptionKey>) {
        self.init(
            params: params,
            stylePack: Self.stylePackFactory?.navigationMenu() ?? .default
        )
    }
    
    public init(params: NavigationMenuUIComponentScreenParams<OptionKey>, styleType: UIStyleType) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType)
        )
    }
    
    public init(params: NavigationMenuUIComponentScreenParams<OptionKey>, stylePack: UIElementComponentStylePack<NavigationMenuUIComponentScreenStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<NavigationMenuUIComponentScreenStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.navigationMenu() ?? .default(styleType: styleType)
    }
}
