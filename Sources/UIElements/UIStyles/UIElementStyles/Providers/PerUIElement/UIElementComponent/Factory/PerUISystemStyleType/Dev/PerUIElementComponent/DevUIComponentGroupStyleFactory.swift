//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentGroupStyleFactory: UIElementComponentTypeStyleFactory, UIComponentGroupStyleFactoryInterface {
    
    private typealias ColorPalette = DevUIColorPalette.UIElementComponent.UIComponentGroup
    private typealias ConstantPalette = DevUIElementComponentConstantPalette.UIElementComponent.UIComponentGroup
    
    public func navigationMenu() -> UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(
                        backgroundColor: ColorPalette.NavigationMenu.background_white
                    ),
                    layoutParams: .init(
                        optionHeight: ConstantPalette.NavigationMenu.UILayoutParams.option_height_50,
                        optionsSpace: ConstantPalette.NavigationMenu.UILayoutParams.options_space_8,
                        titleTopMargin: ConstantPalette.NavigationMenu.UILayoutParams.title_margin_top_16,
                        titleBottomMargin: ConstantPalette.NavigationMenu.UILayoutParams.title_margin_bottom_16
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
