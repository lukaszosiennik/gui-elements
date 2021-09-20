//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapUIComponentStyleFactory:
    UIComponentTypeStyleFactory<
        DevBootstrapUIComponentPaletts
    >,
    UIComponentStyleFactoryInterface {
    
    public func button() -> UIElementComponentStyle<
        ButtonUIComponentStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
    
    public func label() -> UIElementComponentStyle<
        LabelUIComponentStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    textColor: ColorPalette.Label.text_black_212529
                )),
                lookParams: .default,
                layoutParams: .init()
            )
        )
    }
    
    public func textArea() -> UIElementComponentStyle<
        TextAreaUIComponentStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
    
    public func textField() -> UIElementComponentStyle<
        TextFieldUIComponentStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
    
    public func placeholder() -> UIElementComponentStyle<
        PlaceholderUIComponentStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
