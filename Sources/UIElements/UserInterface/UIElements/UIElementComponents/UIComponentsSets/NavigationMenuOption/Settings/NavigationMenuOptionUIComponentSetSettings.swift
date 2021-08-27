//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuOptionUIComponentSetSettings: UIComponentSetSettings {
    
    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentSetStylePropertiesOverwritten
    
    public let params: NavigationMenuOptionUIComponentSetParams
    public var style: UIElementComponentStyle<NavigationMenuOptionUIComponentSetStyleProperties>
    
    public init(
        params: NavigationMenuOptionUIComponentSetParams,
        style: UIElementComponentStyle<NavigationMenuOptionUIComponentSetStyleProperties>
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<NavigationMenuOptionUIComponentSetStyleProperties>? {
        return styleFactory?.navigationMenuOption()
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<NavigationMenuOptionUIComponentSetStyleProperties>? {
        return styleFactory(for: styleType)?.navigationMenuOption()
    }
}
