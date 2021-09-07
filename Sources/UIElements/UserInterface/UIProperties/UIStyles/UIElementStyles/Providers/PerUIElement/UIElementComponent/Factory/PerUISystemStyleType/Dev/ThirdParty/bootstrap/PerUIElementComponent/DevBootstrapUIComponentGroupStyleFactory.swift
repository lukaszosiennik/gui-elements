//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapUIComponentGroupStyleFactory:
    UIElementComponentTypeStyleFactoryBasis<
        DevBootstrapUIComponentGroupPaletts
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
