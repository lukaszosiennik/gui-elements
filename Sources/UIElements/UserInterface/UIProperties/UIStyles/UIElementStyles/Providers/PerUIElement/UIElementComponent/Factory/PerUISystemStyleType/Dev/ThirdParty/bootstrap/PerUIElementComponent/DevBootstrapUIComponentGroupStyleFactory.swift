//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapUIComponentGroupStyleFactory:
    UIComponentGroupTypeStyleFactory<
        DevBootstrapUIComponentGroupPaletts
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
                            color: ColorPalette.Card.Info.border
                        ),
                        separator: .init(
                            width: ConstantPalette.Card.UILook.borderWidth_1,
                            color: ColorPalette.Card.Info.separator
                        )
                    ),
                    title: .init(
                        backgroundColor: ColorPalette.Card.Info.titleBackground,
                        textColor: ColorPalette.Card.Info.titleText
                    ),
                    body: .init(
                        backgroundColor: ColorPalette.Card.Info.bodyBackground
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
        return .default(
            styleType: styleType
        )
    }
}
