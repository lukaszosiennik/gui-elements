//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevSoftwareEngineerUIComponentGroupStyleFactory:
    UIElementComponentTypeStyleFactoryBasis<
        DevSoftwareEngineerUIComponentGroupPaletts
    >,
    UIComponentGroupStyleFactoryInterface {
    
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
                            width: ConstantPalette.Card.UILook.borderWidth_1,
                            color: ColorPalette.Card.border
                        ),
                        separator: .init(
                            width: ConstantPalette.Card.UILook.borderWidth_1,
                            color: ColorPalette.Card.separator
                        )
                    ),
                    title: .init(
                        backgroundColor: ColorPalette.Card.titleBackground,
                        textColor: ColorPalette.Card.titleText
                    ),
                    body: .init(
                        backgroundColor: ColorPalette.Card.bodyBackground
                    )
                )),
                layoutParams: .init(
                    title: .init(
                        leftMargin: ConstantPalette.Card.UILayoutParams.margin_left_16,
                        rightMargin: ConstantPalette.Card.UILayoutParams.margin_right_16,
                        topMargin: ConstantPalette.Card.UILayoutParams.margin_top_12,
                        bottomMargin: ConstantPalette.Card.UILayoutParams.margin_bottom_12
                    ),
                    body: .init(
                        leftMargin: ConstantPalette.Card.UILayoutParams.margin_left_16,
                        rightMargin: ConstantPalette.Card.UILayoutParams.margin_right_16,
                        topMargin: ConstantPalette.Card.UILayoutParams.margin_top_16,
                        bottomMargin: ConstantPalette.Card.UILayoutParams.margin_bottom_16
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
                    optionHeight: ConstantPalette.NavigationMenu.UILayoutParams.height_50,
                    optionsSpace: ConstantPalette.NavigationMenu.UILayoutParams.space_8,
                    titleTopMargin: ConstantPalette.NavigationMenu.UILayoutParams.margin_top_16,
                    titleBottomMargin: ConstantPalette.NavigationMenu.UILayoutParams.margin_bottom_16
                )
            )
        )
    }
}
