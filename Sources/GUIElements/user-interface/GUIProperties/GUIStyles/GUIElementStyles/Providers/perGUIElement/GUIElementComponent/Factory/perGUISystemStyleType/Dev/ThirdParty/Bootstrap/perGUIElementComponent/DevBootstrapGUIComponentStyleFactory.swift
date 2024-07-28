//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public final class DevBootstrapGUIComponentStyleFactory:
    GUIComponentTypeStyleFactory<
        DevBootstrapGUIComponentPaletts
    >,
    GUIComponentStyleFactoryInterface {
    
    public func button() -> GUIElementComponentStyle<
        ButtonGUIComponentStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
    
    public func label() -> GUIElementComponentStyle<
        LabelGUIComponentStyleProperties
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
    
    public func textArea() -> GUIElementComponentStyle<
        TextAreaGUIComponentStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
    
    public func textField() -> GUIElementComponentStyle<
        TextFieldGUIComponentStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
    
    public func placeholder() -> GUIElementComponentStyle<
        PlaceholderGUIComponentStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
