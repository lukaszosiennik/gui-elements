//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public final class DevSoftwareEngineerGUIComponentGroupStyleFactory:
    GUIComponentGroupTypeStyleFactory<
        DevSoftwareEngineerGUIComponentGroupPaletts
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
                            color: ColorPalette.Card.border
                        ),
                        separator: .init(
                            width: ConstantPalette.Card.GUILook.borderWidth_1,
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
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    backgroundColor: ColorPalette.NavigationMenu.background_white
                )),
                lookParams: .default,
                layoutParams: .init(
                    optionHeight: ConstantPalette.NavigationMenu.GUILayoutParams.height_50,
                    optionsSpace: ConstantPalette.NavigationMenu.GUILayoutParams.space_8,
                    titleTopMargin: ConstantPalette.NavigationMenu.GUILayoutParams.margin_top_16,
                    titleBottomMargin: ConstantPalette.NavigationMenu.GUILayoutParams.margin_bottom_16
                )
            )
        )
    }
}
