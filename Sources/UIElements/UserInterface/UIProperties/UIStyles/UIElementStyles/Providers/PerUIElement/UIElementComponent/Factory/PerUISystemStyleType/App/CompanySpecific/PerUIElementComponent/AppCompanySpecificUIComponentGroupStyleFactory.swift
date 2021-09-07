//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppCompanySpecificUIComponentGroupStyleFactory:
    UIElementComponentTypeStyleFactoryBasis<
        AppCompanySpecificUIColorPalette.UIElementComponent.UIComponentGroup,
        AppCompanySpecificUIFontPalette,
        AppCompanySpecificUIElementComponentConstantPalette.UIElementComponent.UIComponentGroup
    >,
    UIComponentGroupStyleFactoryInterface {
    
    public func card() -> UIElementComponentStyle<
        CardUIComponentGroupStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
    
    public func navigationMenu() -> UIElementComponentStyle<
        NavigationMenuUIComponentGroupStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
