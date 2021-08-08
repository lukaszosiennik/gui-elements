//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentSetStyleFactory: UIElementComponentTypeStyleFactory, UIComponentSetStyleFactoryInterface {
    
    public func navigationMenuOption() -> UIElementComponentStylePack<NavigationMenuOptionUIComponentSetStyleProperties> {
        return UIElementComponentStylePack(
            factory: self,
            style: UIElementComponentStyle(
                type: styleType,
                properties: NavigationMenuOptionUIComponentSetStyleProperties(
                    look: NavigationMenuOptionUIComponentSetStylePropertiesLook(
                        backgroundColor: DevUIColorPalette.UIElementComponent.UIComponentSet.SelectionListOption.background_white,
                        borderWidth: DevUIElementComponentConstantPalette.UIElementComponent.UIComponentSet.SelectionListOption.borderWidth_1,
                        borderColor: DevUIColorPalette.UIElementComponent.UIComponentSet.SelectionListOption.border_black
                    ),
                    layoutParams: NavigationMenuOptionUIComponentSetStylePropertiesLayoutParams()
                )
            )
        )
    }
}
