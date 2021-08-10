//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentScreenStyleFactory: UIElementComponentTypeStyleFactory, UIComponentScreenStyleFactoryInterface {
    
    public func information() -> UIElementComponentStylePack<InformationUIComponentScreenStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(
                        backgroundColor: DevUIColorPalette.UIElementComponent.UIComponentScreen.Information.background_white
                    ),
                    layoutParams: .init()
                )
            )
        )
    }
    
    public func navigationMenu() -> UIElementComponentStylePack<NavigationMenuUIComponentScreenStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(
                        backgroundColor: DevUIColorPalette.UIElementComponent.UIComponentScreen.NavigationMenuOption.background_white
                    ),
                    layoutParams: .init(
                        leadingSpace: DevUIElementComponentConstantPalette.UILayout.UIComponentScreen.NavigationMenu.marginLeft_16,
                        trailingSpace: DevUIElementComponentConstantPalette.UILayout.UIComponentScreen.NavigationMenu.marginRight_16
                    )
                )
            )
        )
    }
}
