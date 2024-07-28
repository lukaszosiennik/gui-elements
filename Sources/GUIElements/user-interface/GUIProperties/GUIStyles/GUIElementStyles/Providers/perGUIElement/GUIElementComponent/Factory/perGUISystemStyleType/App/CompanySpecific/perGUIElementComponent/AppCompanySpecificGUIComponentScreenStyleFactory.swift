//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public final class AppCompanySpecificGUIComponentScreenStyleFactory:
    GUIComponentScreenTypeStyleFactory<
        AppCompanySpecificGUIComponentScreenPaletts
    >,
    GUIComponentScreenStyleFactoryInterface {
    
    public func information() -> GUIElementComponentStyle<
        InformationGUIComponentScreenStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
    
    public func navigationMenu() -> GUIElementComponentStyle<
        NavigationMenuGUIComponentScreenStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
