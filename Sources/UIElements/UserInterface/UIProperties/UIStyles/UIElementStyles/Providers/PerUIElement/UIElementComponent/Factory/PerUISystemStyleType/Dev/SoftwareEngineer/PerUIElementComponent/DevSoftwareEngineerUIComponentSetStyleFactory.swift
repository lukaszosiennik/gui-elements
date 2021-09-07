//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevSoftwareEngineerUIComponentSetStyleFactory:
    UIElementComponentTypeStyleFactoryBasis<
        DevSoftwareEngineerUIColorPalette.UIElementComponent.UIComponentSet,
        DevSoftwareEngineerUIFontPalette,
        DevSoftwareEngineerUIElementComponentConstantPalette.UIElementComponent.UIComponentSet
    >,
    UIComponentSetStyleFactoryInterface {
    
    public func navigationMenuOption() -> UIElementComponentStyle<
        NavigationMenuOptionUIComponentSetStyleProperties
    > {
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
