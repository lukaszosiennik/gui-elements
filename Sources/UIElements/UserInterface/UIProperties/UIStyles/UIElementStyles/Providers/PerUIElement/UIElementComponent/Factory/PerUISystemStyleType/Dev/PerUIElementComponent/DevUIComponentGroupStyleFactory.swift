//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentGroupStyleFactory:
    UIElementComponentTypeStyleFactory,
    UIComponentGroupStyleFactoryInterface {
    
    private typealias ColorPalette =
        DevUIColorPalette.UIElementComponent.UIComponentGroup
    private typealias ConstantPalette =
        DevUIElementComponentConstantPalette.UIElementComponent.UIComponentGroup
    
    public func card() -> UIElementComponentStyle<
        CardUIComponentGroupStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    whole: .init(
                        border: .init(
                            corners: .rounded,
                            width: 1,
                            color: .uie.`init`(
                                hex: "#d9dadbff"
                            ) ?? .black
                        ),
                        separator: .init(
                            width: 1,
                            color: .uie.`init`(
                                hex: "#d2d3d4ff"
                            ) ?? .blue
                        )
                    ),
                    title: .init(
                        backgroundColor: .uie.`init`(
                            hex: "#f0f1f2ff"
                        ) ?? .red,
                        textColor: .uie.`init`(
                            hex: "#212529ff"
                        ) ?? .orange
                    ),
                    body: .init(
                        backgroundColor: .uie.`init`(
                            hex: "#f8f9faff"
                        ) ?? .green
                    )
                )),
                layoutParams: .init(
                    title: .init(
                        leftMargin: 16,
                        rightMargin: 16,
                        topMargin: 12,
                        bottomMargin: 12
                    ),
                    body: .init(
                        leftMargin: 16,
                        rightMargin: 16,
                        topMargin: 16,
                        bottomMargin: 16
                    )
                )
            )
        )
    }
    
    public func navigationMenu() -> UIElementComponentStyle<
        NavigationMenuUIComponentGroupStyleProperties
    > {
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
}
