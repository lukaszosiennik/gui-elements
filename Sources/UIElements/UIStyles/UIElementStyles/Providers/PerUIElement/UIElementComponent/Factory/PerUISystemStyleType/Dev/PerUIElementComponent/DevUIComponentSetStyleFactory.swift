//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentSetStyleFactory: UIElementComponentTypeStyleFactory, UIComponentSetStyleFactoryInterface {
    
    public func navigationMenuOption() -> UIElementComponentStylePack<NavigationMenuOptionUIComponentSetStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(
                        backgroundColor: DevUIColorPalette.UIElementComponent.UIComponentSet.NavigationMenuOption.background_white,
                        borderWidth: DevUIElementComponentConstantPalette.UIElementComponent.UIComponentSet.NavigationMenuOption.borderWidth_1,
                        borderColor: DevUIColorPalette.UIElementComponent.UIComponentSet.NavigationMenuOption.border_black
                    ),
                    layoutParams: .init()
                )
            )
        )
    }
}
