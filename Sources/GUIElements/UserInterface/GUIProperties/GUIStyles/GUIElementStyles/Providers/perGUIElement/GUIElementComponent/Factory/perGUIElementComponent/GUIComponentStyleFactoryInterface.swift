//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentStyleFactoryInterface:
    GUIElementComponentTypeStyleFactoryInterface {
    
    func button() -> GUIElementComponentStyle<
        ButtonGUIComponentStyleProperties
    >
    func label() -> GUIElementComponentStyle<
        LabelGUIComponentStyleProperties
    >
    func textArea() -> GUIElementComponentStyle<
        TextAreaGUIComponentStyleProperties
    >
    func textField() -> GUIElementComponentStyle<
        TextFieldGUIComponentStyleProperties
    >
    
    func placeholder() -> GUIElementComponentStyle<
        PlaceholderGUIComponentStyleProperties
    >
}
