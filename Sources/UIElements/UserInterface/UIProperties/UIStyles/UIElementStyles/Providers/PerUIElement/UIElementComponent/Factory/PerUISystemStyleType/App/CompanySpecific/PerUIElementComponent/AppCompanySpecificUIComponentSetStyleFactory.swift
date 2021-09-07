//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppCompanySpecificUIComponentSetStyleFactory:
    UIElementComponentTypeStyleFactoryBasis<
        AppCompanySpecificUIColorPalette.UIElementComponent.UIComponentSet,
        AppCompanySpecificUIFontPalette,
        AppCompanySpecificUIElementComponentConstantPalette.UIElementComponent.UIComponentSet
    >,
    UIComponentSetStyleFactoryInterface {
    
    public func navigationMenuOption() -> UIElementComponentStyle<
        NavigationMenuOptionUIComponentSetStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
