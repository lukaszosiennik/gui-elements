//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentGroupStyleFactory: UIElementComponentTypeStyleFactory, UIComponentGroupStyleFactoryInterface {
    
    private typealias ColorPalette = DevUIColorPalette.UIElementComponent.UIComponentGroup
    private typealias ConstantPalette = DevUIElementComponentConstantPalette.UIElementComponent.UIComponentGroup
    
    public func navigationMenu() -> UIElementComponentStyle<NavigationMenuUIComponentGroupStyleProperties> {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    backgroundColor: ColorPalette.NavigationMenu.background_white
                )),
                lookParams: .default,
                layoutParams: .init(
                    optionHeight: ConstantPalette.NavigationMenu.UILayoutParams.option_height_50,
                    optionsSpace: ConstantPalette.NavigationMenu.UILayoutParams.options_space_8,
                    titleTopMargin: ConstantPalette.NavigationMenu.UILayoutParams.title_margin_top_16,
                    titleBottomMargin: ConstantPalette.NavigationMenu.UILayoutParams.title_margin_bottom_16
                )
            )
        )
    }
    
    public func card() -> UIElementComponentStyle<CardUIComponentGroupStyleProperties> {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init()),
                layoutParams: .init()
            )
        )
    }
}
