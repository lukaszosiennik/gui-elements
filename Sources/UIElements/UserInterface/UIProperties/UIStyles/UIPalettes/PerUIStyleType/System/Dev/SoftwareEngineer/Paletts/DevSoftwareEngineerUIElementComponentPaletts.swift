//
//  Created by Łukasz Osiennik on 07/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct DevSoftwareEngineerUIComponentPaletts:
    DevSoftwareEngineerUIElementPaletts {
    
    public typealias ColorPalette =
        DevSoftwareEngineerUIColorPalette.UIElementComponent.UIComponent
    public typealias FontPalette =
        DevSoftwareEngineerUIFontPalette.UIElementComponent.UIComponentScreen
    public typealias ConstantPalette =
        DevSoftwareEngineerUIElementComponentConstantPalette.UIElementComponent.UIComponent
}

public struct DevSoftwareEngineerUIComponentSetPaletts:
    DevSoftwareEngineerUIElementPaletts {
    
    public typealias ColorPalette =
        DevSoftwareEngineerUIColorPalette.UIElementComponent.UIComponentSet
    public typealias FontPalette =
        DevSoftwareEngineerUIFontPalette.UIElementComponent.UIComponentScreen
    public typealias ConstantPalette =
        DevSoftwareEngineerUIElementComponentConstantPalette.UIElementComponent.UIComponentSet
}

public struct DevSoftwareEngineerUIComponentGroupPaletts:
    DevSoftwareEngineerUIElementPaletts {
    
    public typealias ColorPalette =
        DevSoftwareEngineerUIColorPalette.UIElementComponent.UIComponentGroup
    public typealias FontPalette =
        DevSoftwareEngineerUIFontPalette.UIElementComponent.UIComponentScreen
    public typealias ConstantPalette =
        DevSoftwareEngineerUIElementComponentConstantPalette.UIElementComponent.UIComponentGroup
}

public struct DevSoftwareEngineerUIComponentScreenPaletts:
    DevSoftwareEngineerUIElementPaletts {
    
    public typealias ColorPalette =
        DevSoftwareEngineerUIColorPalette.UIElementComponent.UIComponentScreen
    public typealias FontPalette =
        DevSoftwareEngineerUIFontPalette.UIElementComponent.UIComponentScreen
    public typealias ConstantPalette =
        DevSoftwareEngineerUIElementComponentConstantPalette.UIElementComponent.UIComponentScreen
}
