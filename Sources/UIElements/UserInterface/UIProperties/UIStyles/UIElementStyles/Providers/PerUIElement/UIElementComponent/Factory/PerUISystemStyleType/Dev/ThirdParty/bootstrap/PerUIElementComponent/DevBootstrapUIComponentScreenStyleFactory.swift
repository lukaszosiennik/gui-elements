//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapUIComponentScreenStyleFactory:
    UIComponentScreenTypeStyleFactory<
        DevBootstrapUIComponentScreenPaletts
    >,
    UIComponentScreenStyleFactoryInterface {
    
    public func information() -> UIElementComponentStyle<
        InformationUIComponentScreenStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
    
    public func navigationMenu() -> UIElementComponentStyle<
        NavigationMenuUIComponentScreenStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
