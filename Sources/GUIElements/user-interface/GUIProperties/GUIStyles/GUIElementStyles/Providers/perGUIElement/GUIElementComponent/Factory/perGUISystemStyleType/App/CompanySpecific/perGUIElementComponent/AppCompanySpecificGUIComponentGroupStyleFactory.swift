//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public final class AppCompanySpecificGUIComponentGroupStyleFactory:
    GUIComponentGroupTypeStyleFactory<
        AppCompanySpecificGUIComponentGroupPaletts
    >,
    GUIComponentGroupStyleFactoryInterface {
    
    public func card() -> GUIElementComponentStyle<
        CardGUIComponentGroupStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
    
    public func navigationMenu() -> GUIElementComponentStyle<
        NavigationMenuGUIComponentGroupStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
