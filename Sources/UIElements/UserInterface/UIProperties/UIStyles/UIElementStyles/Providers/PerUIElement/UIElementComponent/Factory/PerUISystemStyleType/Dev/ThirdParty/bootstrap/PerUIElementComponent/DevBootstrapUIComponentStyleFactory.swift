//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapUIComponentStyleFactory:
    UIElementComponentTypeStyleFactoryBasis<
        DevBootstrapUIColorPalette.UIElementComponent.UIComponent,
        DevBootstrapUIFontPalette,
        DevBootstrapUIElementComponentConstantPalette.UIElementComponent.UIComponent
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
