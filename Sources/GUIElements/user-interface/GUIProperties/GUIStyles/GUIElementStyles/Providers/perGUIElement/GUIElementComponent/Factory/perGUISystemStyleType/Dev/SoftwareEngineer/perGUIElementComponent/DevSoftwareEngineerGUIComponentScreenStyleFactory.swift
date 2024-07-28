//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public final class DevSoftwareEngineerGUIComponentScreenStyleFactory:
    GUIComponentScreenTypeStyleFactory<
        DevSoftwareEngineerGUIComponentScreenPaletts
    >,
    GUIComponentScreenStyleFactoryInterface {
    
    public func information() -> GUIElementComponentStyle<
        InformationGUIComponentScreenStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    backgroundColor: ColorPalette.Information.background_white
                )),
                lookParams: .default,
                layoutParams: .init()
            )
        )
    }
    
    public func navigationMenu() -> GUIElementComponentStyle<
        NavigationMenuGUIComponentScreenStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    backgroundColor: ColorPalette.NavigationMenu.background_white
                )),
                layoutParams: .preferred
            )
        )
    }
}
