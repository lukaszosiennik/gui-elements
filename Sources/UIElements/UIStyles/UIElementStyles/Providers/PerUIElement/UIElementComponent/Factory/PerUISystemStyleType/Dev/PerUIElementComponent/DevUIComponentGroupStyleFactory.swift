//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentGroupStyleFactory: UIElementComponentTypeStyleFactory, UIComponentGroupStyleFactoryInterface {
    
    public func navigationMenu() -> UIElementComponentStylePack<NavigationMenuUIComponentGroupStyleProperties> {
        return UIElementComponentStylePack(
            factory: self,
            style: UIElementComponentStyle(
                type: styleType,
                properties: NavigationMenuUIComponentGroupStyleProperties(
                    look: NavigationMenuUIComponentGroupStylePropertiesLook(),
                    layoutParams: NavigationMenuUIComponentGroupStylePropertiesLayoutParams(
                        titleTopSpace: 16,
                        titleBottomSpace: 16,
                        optionHeight: 50,
                        optionsSpace: 8
                    )
                )
            )
        )
    }
}
