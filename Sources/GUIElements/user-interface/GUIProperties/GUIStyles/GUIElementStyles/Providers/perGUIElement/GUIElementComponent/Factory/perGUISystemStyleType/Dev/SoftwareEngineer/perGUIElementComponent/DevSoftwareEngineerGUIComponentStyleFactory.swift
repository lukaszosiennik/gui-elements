//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public final class DevSoftwareEngineerGUIComponentStyleFactory:
    GUIComponentTypeStyleFactory<
        DevSoftwareEngineerGUIComponentPaletts
    >,
    GUIComponentStyleFactoryInterface {
    
    public func button() -> GUIElementComponentStyle<
        ButtonGUIComponentStyleProperties
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
    
    public func label() -> GUIElementComponentStyle<
        LabelGUIComponentStyleProperties
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
    
    public func textArea() -> GUIElementComponentStyle<
        TextAreaGUIComponentStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .os(.init()),
                layoutParams: .init()
            )
        )
    }
    
    public func textField() -> GUIElementComponentStyle<
        TextFieldGUIComponentStyleProperties
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
    
    public func placeholder() -> GUIElementComponentStyle<
        PlaceholderGUIComponentStyleProperties
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
