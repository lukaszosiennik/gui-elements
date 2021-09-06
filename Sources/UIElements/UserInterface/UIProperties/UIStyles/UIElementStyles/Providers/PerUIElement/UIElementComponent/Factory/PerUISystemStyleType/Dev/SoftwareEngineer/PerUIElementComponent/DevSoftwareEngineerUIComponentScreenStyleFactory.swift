//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevSoftwareEngineerUIComponentScreenStyleFactory:
    UIElementComponentTypeStyleFactory,
    UIComponentScreenStyleFactoryInterface {
    
    private typealias ColorPalette =
        DevSoftwareEngineerUIColorPalette.UIElementComponent.UIComponentScreen
    private typealias ConstantPalette =
        DevSoftwareEngineerUIElementComponentConstantPalette.UIElementComponent.UIComponentScreen
    
    public func information() -> UIElementComponentStyle<
        InformationUIComponentScreenStyleProperties
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
    
    public func navigationMenu() -> UIElementComponentStyle<
        NavigationMenuUIComponentScreenStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    backgroundColor: ColorPalette.NavigationMenuOption.background_white
                )),
                layoutParams: .preferred
            )
        )
    }
}