//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppUIComponentScreenStyleFactory:
    UIElementComponentTypeStyleFactory,
    UIComponentScreenStyleFactoryInterface {
    
    public func information() -> UIElementComponentStyle<InformationUIComponentScreenStyleProperties> {
        return .default(
            styleType: styleType
        )
    }
    
    public func navigationMenu() -> UIElementComponentStyle<NavigationMenuUIComponentScreenStyleProperties> {
        return .default(
            styleType: styleType
        )
    }
}
