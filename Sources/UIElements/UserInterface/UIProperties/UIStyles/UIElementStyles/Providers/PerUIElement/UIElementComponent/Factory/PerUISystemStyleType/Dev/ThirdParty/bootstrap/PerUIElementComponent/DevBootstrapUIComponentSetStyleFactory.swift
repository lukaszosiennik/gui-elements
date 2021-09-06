//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapUIComponentSetStyleFactory:
    UIElementComponentTypeStyleFactory,
    UIComponentSetStyleFactoryInterface {
    
    public func navigationMenuOption() -> UIElementComponentStyle<
        NavigationMenuOptionUIComponentSetStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}