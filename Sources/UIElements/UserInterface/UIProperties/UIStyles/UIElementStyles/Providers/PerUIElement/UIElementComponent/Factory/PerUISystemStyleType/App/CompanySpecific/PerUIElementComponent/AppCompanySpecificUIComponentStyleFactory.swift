//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppCompanySpecificUIComponentStyleFactory:
    UIComponentTypeStyleFactory<
        AppCompanySpecificUIComponentPaletts
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
        return .default(
            styleType: styleType
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
