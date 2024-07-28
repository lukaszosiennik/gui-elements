//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public final class DevSoftwareEngineerGUIComponentSetStyleFactory:
    GUIComponentSetTypeStyleFactory<
        DevSoftwareEngineerGUIComponentSetPaletts
    >,
    GUIComponentSetStyleFactoryInterface {
    
    public func navigationMenuOption() -> GUIElementComponentStyle<
        NavigationMenuOptionGUIComponentSetStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    backgroundColor: ColorPalette.NavigationMenuOption.background_white,
                    borderColor: ColorPalette.NavigationMenuOption.border_black,
                    borderWidth: ConstantPalette.NavigationMenuOption.GUILook.borderWidth_1
                )),
                layoutParams: .init()
            )
        )
    }
}
