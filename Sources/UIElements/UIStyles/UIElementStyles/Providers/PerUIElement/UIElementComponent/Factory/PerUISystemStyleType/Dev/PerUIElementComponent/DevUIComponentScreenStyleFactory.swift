//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentScreenStyleFactory: UIElementComponentTypeStyleFactory, UIComponentScreenStyleFactoryInterface {
    
    public func information() -> UIElementComponentStylePack<InformationUIComponentScreenStyleProperties> {
        return UIElementComponentStylePack(
            factory: self,
            style: UIElementComponentStyle(
                type: styleType,
                properties: InformationUIComponentScreenStyleProperties(
                    look: InformationUIComponentScreenStylePropertiesLook(
                        backgroundColor: DevUIColorPalette.UIElementComponent.UIComponentScreen.Information.background_white
                    ),
                    layoutParams: InformationUIComponentScreenStylePropertiesLayoutParams()
                )
            )
        )
    }
    
    public func navigationMenu() -> UIElementComponentStylePack<NavigationMenuUIComponentScreenStyleProperties> {
        return UIElementComponentStylePack(
            factory: self,
            style: UIElementComponentStyle(
                type: styleType,
                properties: NavigationMenuUIComponentScreenStyleProperties(
                    look: NavigationMenuUIComponentScreenStylePropertiesLook(
                        backgroundColor: DevUIColorPalette.UIElementComponent.UIComponentScreen.NavigationMenuOption.background_white
                    ),
                    layoutParams: NavigationMenuUIComponentScreenStylePropertiesLayoutParams(
                        leadingSpace: DevUIElementComponentConstantPalette.UILayout.UIComponentScreen.NavigationMenu.marginLeft_16,
                        trailingSpace: DevUIElementComponentConstantPalette.UILayout.UIComponentScreen.NavigationMenu.marginRight_16
                    )
                )
            )
        )
    }
}
