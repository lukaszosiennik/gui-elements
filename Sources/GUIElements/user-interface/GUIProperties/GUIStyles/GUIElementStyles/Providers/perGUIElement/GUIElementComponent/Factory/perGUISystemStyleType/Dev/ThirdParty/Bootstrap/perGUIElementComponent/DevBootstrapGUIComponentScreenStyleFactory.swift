//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public final class DevBootstrapGUIComponentScreenStyleFactory:
    GUIComponentScreenTypeStyleFactory<
        DevBootstrapGUIComponentScreenPaletts
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
