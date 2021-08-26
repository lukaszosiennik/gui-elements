//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentGroupSettings<
    OptionKey: InputUIElementComponentActionsKeyInterface
>: UIComponentGroupSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType = NavigationMenuUIComponentGroupStylePropertiesOverwritten
    
    public let params: NavigationMenuUIComponentGroupParams<OptionKey>
    public var style: UIElementComponentStyle<NavigationMenuUIComponentGroupStyleProperties>
    
    public init(params: NavigationMenuUIComponentGroupParams<OptionKey>, style: UIElementComponentStyle<NavigationMenuUIComponentGroupStyleProperties>) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<NavigationMenuUIComponentGroupStyleProperties>? {
        return styleFactory?.navigationMenu()
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<NavigationMenuUIComponentGroupStyleProperties>? {
        return styleFactory(for: styleType)?.navigationMenu()
    }
}
