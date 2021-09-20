//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapGUIComponentGroupStyleFactory:
    GUIComponentGroupTypeStyleFactory<
        DevBootstrapGUIComponentGroupPaletts
    >,
    GUIComponentGroupStyleFactoryInterface {
    
    public func card() -> GUIElementComponentStyle<
        CardGUIComponentGroupStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    whole: .init(
                        border: .init(
                            corners: .rounded,
                            width: ConstantPalette.Card.GUILook.borderWidth_1,
                            color: ColorPalette.Card.Success.border
                        ),
                        separator: .init(
                            width: ConstantPalette.Card.GUILook.borderWidth_1,
                            color: ColorPalette.Card.Success.separator
                        )
                    ),
                    title: .init(
                        backgroundColor: ColorPalette.Card.Success.titleBackground,
                        textColor: ColorPalette.Card.Success.titleText
                    ),
                    body: .init(
                        backgroundColor: ColorPalette.Card.Success.bodyBackground
                    )
                )),
                layoutParams: .init(
                    title: .init(
                        leftMargin: ConstantPalette.Card.GUILayoutParams.margin_left_16,
                        rightMargin: ConstantPalette.Card.GUILayoutParams.margin_right_16,
                        topMargin: ConstantPalette.Card.GUILayoutParams.margin_top_12,
                        bottomMargin: ConstantPalette.Card.GUILayoutParams.margin_bottom_12
                    ),
                    body: .init(
                        leftMargin: ConstantPalette.Card.GUILayoutParams.margin_left_16,
                        rightMargin: ConstantPalette.Card.GUILayoutParams.margin_right_16,
                        topMargin: ConstantPalette.Card.GUILayoutParams.margin_top_16,
                        bottomMargin: ConstantPalette.Card.GUILayoutParams.margin_bottom_16
                    )
                )
            )
        )
    }
    
    public func navigationMenu() -> GUIElementComponentStyle<
        NavigationMenuGUIComponentGroupStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
