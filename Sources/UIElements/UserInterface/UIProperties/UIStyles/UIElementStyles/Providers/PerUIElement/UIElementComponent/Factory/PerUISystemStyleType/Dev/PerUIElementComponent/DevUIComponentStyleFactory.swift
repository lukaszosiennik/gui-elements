//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentStyleFactory:
    UIElementComponentTypeStyleFactory,
    UIComponentStyleFactoryInterface {
    
    private typealias ColorPalette =
        DevUIColorPalette.UIElementComponent.UIComponent
    private typealias ConstantPalette =
        DevUIElementComponentConstantPalette.UIElementComponent.UIComponent
    
    public func button() -> UIElementComponentStyle<
        ButtonUIComponentStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    titleColorNormal: ColorPalette.Button.text_normal_green,
                    titleColorHighlighted: ColorPalette.Button.text_highlighted_red
                )),
                layoutParams: .init()
            )
        )
    }
    
    public func label() -> UIElementComponentStyle<
        LabelUIComponentStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    textColor: ColorPalette.Label.text_blue
                )),
                lookParams: .default,
                layoutParams: .init()
            )
        )
    }
    
    public func textArea() -> UIElementComponentStyle<
        TextAreaUIComponentStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .os(.init()),
                layoutParams: .init()
            )
        )
    }
    
    public func textField() -> UIElementComponentStyle<
        TextFieldUIComponentStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .os(.init(
                    borderStyle: .roundedRect
                )),
                layoutParams: .init()
            )
        )
    }
    
    public func placeholder() -> UIElementComponentStyle<
        PlaceholderUIComponentStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init()),
                layoutParams: .preferred
            )
        )
    }
}
