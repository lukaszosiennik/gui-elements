//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentSetStyleFactory: UIElementComponentTypeStyleFactory, UIComponentSetStyleFactoryInterface {
    
    private typealias ColorPalette = DevUIColorPalette.UIElementComponent.UIComponentSet
    private typealias ConstantPalette = DevUIElementComponentConstantPalette.UIElementComponent.UIComponentSet
    
    public func navigationMenuOption() -> UIElementComponentStyle<NavigationMenuOptionUIComponentSetStyleProperties> {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    backgroundColor: ColorPalette.NavigationMenuOption.background_white,
                    borderColor: ColorPalette.NavigationMenuOption.border_black,
                    borderWidth: ConstantPalette.NavigationMenuOption.UILook.borderWidth_1
                )),
                layoutParams: .init()
            )
        )
    }
}
