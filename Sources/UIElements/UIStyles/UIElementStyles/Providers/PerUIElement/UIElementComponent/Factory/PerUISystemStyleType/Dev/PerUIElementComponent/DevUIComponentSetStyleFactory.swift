//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentSetStyleFactory: UIElementComponentTypeStyleFactory, UIComponentSetStyleFactoryInterface {
    
    private typealias ColorPalette = DevUIColorPalette.UIElementComponent.UIComponentSet
    private typealias ConstantPalette = DevUIElementComponentConstantPalette.UIElementComponent.UIComponentSet
    
    public func navigationMenuOption() -> UIElementComponentStylePack<NavigationMenuOptionUIComponentSetStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(
                        backgroundColor: ColorPalette.NavigationMenuOption.background_white,
                        borderColor: ColorPalette.NavigationMenuOption.border_black,
                        borderWidth: ConstantPalette.NavigationMenuOption.UILook.borderWidth_1
                    ),
                    lookParams: .init(),
                    layoutParams: .init()
                )
            )
        )
    }
}
