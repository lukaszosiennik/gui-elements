//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentScreenStyleFactory: UIElementComponentTypeStyleFactory, UIComponentScreenStyleFactoryInterface {
    
    private typealias ColorPalette = DevUIColorPalette.UIElementComponent.UIComponentScreen
    private typealias ConstantPalette = DevUIElementComponentConstantPalette.UIElementComponent.UIComponentScreen
    
    public func information() -> UIElementComponentStylePack<InformationUIComponentScreenStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(
                        backgroundColor: ColorPalette.Information.background_white
                    ),
                    lookParams: .init(),
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
                        backgroundColor: ColorPalette.NavigationMenuOption.background_white
                    ),
                    lookParams: .init(),
                    layoutParams: .init(
                        leftMargin: ConstantPalette.NavigationMenu.UILayoutParams.margin_left_16,
                        rightMargin: ConstantPalette.NavigationMenu.UILayoutParams.margin_right_16
                    )
                )
            )
        )
    }
}
