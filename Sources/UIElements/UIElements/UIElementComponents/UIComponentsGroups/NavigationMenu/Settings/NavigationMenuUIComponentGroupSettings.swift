//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentGroupSettings<OptionKey: InputUIElementComponentActionsKeyInterface>: UIComponentGroupSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType = NavigationMenuUIComponentGroupStylePropertiesOverwritten
    
    public let params: NavigationMenuUIComponentGroupParams<OptionKey>
    public var stylePack: UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties>
    
    public init(params: NavigationMenuUIComponentGroupParams<OptionKey>, stylePack: UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static var stylePack: UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties>? {
        return Self.stylePackFactory?.navigationMenu()
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties>? {
        return Self.stylePackFactory(for: styleType)?.navigationMenu()
    }
}
