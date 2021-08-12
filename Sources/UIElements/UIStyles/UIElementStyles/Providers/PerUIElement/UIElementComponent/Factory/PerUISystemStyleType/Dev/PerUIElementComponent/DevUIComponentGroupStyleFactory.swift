//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentGroupStyleFactory: UIElementComponentTypeStyleFactory, UIComponentGroupStyleFactoryInterface {
    
    public func navigationMenu() -> UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(
                        backgroundColor: DevUIColorPalette.UIElementComponent.UIComponentGroup.NavigationMenu.background_white
                    ),
                    layoutParams: .init(
                        titleTopSpace: DevUIElementComponentConstantPalette.UILayout.UIComponentGroup.NavigationMenu.titleMarginTop_16,
                        titleBottomSpace: DevUIElementComponentConstantPalette.UILayout.UIComponentGroup.NavigationMenu.titleMarginBottom_16,
                        optionHeight: DevUIElementComponentConstantPalette.UIElementComponent.UIComponentGroup.NavigationMenu.optionSizeHeight_50,
                        optionsSpace: DevUIElementComponentConstantPalette.UILayout.UIComponentGroup.NavigationMenu.optionsSpace_8
                    )
                )
            )
        )
    }
    
    public func card() -> UIElementComponentStylePack<CardUIComponentGroupStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(),
                    layoutParams: .init()
                )
            )
        )
    }
}
