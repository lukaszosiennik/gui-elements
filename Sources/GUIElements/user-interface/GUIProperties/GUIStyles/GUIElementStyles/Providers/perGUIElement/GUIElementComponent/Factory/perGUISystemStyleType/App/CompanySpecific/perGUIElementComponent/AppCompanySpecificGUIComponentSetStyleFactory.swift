//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public final class AppCompanySpecificGUIComponentSetStyleFactory:
    GUIComponentSetTypeStyleFactory<
        AppCompanySpecificGUIComponentSetPaletts
    >,
    GUIComponentSetStyleFactoryInterface {
    
    public func navigationMenuOption() -> GUIElementComponentStyle<
        NavigationMenuOptionGUIComponentSetStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
