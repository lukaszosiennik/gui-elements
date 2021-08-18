//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentScreenSettings<OptionKey: InputUIElementComponentActionsKeyInterface>: UIComponentScreenSettings {
    
    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentScreenStylePropertiesOverwritten
    
    public let params: NavigationMenuUIComponentScreenParams<OptionKey>
    public var stylePack: UIElementComponentStylePack<NavigationMenuUIComponentScreenStyleProperties>
    
    public init(params: NavigationMenuUIComponentScreenParams<OptionKey>, stylePack: UIElementComponentStylePack<NavigationMenuUIComponentScreenStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static var stylePack: UIElementComponentStylePack<NavigationMenuUIComponentScreenStyleProperties>? {
        return Self.stylePackFactory?.navigationMenu()
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<NavigationMenuUIComponentScreenStyleProperties>? {
        return Self.stylePackFactory(for: styleType)?.navigationMenu()
    }
}
