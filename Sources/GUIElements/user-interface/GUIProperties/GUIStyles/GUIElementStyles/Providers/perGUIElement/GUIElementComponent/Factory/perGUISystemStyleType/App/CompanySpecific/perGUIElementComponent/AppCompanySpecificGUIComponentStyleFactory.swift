//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppCompanySpecificGUIComponentStyleFactory:
    GUIComponentTypeStyleFactory<
        AppCompanySpecificGUIComponentPaletts
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
        return .default(
            styleType: styleType
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
