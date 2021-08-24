//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppUIComponentGroupStyleFactory: UIElementComponentTypeStyleFactory, UIComponentGroupStyleFactoryInterface {
    
    public func navigationMenu() -> UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties> {
        return .default(
            styleType: styleType
        )
    }
    
    public func card() -> UIElementComponentStylePack<CardUIComponentGroupStyleProperties> {
        return .default(
            styleType: styleType
        )
    }
}
