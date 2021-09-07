//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol DevSoftwareEngineerUIPalette:
    DevUIPalette {}

public protocol DevSoftwareEngineerUIPaletts:
    DevUIPaletts
where
    ColorPalette: DevSoftwareEngineerUIPalette,
    FontPalette: DevSoftwareEngineerUIPalette,
    ConstantPalette: DevSoftwareEngineerUIPalette {}

public struct DevSoftwareEngineerUIElementComponentPaletts:
    DevSoftwareEngineerUIPaletts {
    
    public typealias ColorPalette =
        DevSoftwareEngineerUIColorPalette.UIElementComponent
    public typealias FontPalette =
        DevSoftwareEngineerUIFontPalette
    public typealias ConstantPalette =
        DevSoftwareEngineerUIElementComponentConstantPalette.UIElementComponent
}

public struct DevSoftwareEngineerUIComponentPaletts:
    DevSoftwareEngineerUIPaletts {
    
    public typealias ColorPalette =
        DevSoftwareEngineerUIElementComponentPaletts.ColorPalette.UIComponent
    public typealias FontPalette =
        DevSoftwareEngineerUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        DevSoftwareEngineerUIElementComponentPaletts.ConstantPalette.UIComponent
}

public struct DevSoftwareEngineerUIComponentSetPaletts:
    DevSoftwareEngineerUIPaletts {
    
    public typealias ColorPalette =
        DevSoftwareEngineerUIElementComponentPaletts.ColorPalette.UIComponentSet
    public typealias FontPalette =
        DevSoftwareEngineerUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        DevSoftwareEngineerUIElementComponentPaletts.ConstantPalette.UIComponentSet
}

public struct DevSoftwareEngineerUIComponentGroupPaletts:
    DevSoftwareEngineerUIPaletts {
    
    public typealias ColorPalette =
        DevSoftwareEngineerUIElementComponentPaletts.ColorPalette.UIComponentGroup
    public typealias FontPalette =
        DevSoftwareEngineerUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        DevSoftwareEngineerUIElementComponentPaletts.ConstantPalette.UIComponentGroup
}

public struct DevSoftwareEngineerUIComponentScreenPaletts:
    DevSoftwareEngineerUIPaletts {
    
    public typealias ColorPalette =
        DevSoftwareEngineerUIElementComponentPaletts.ColorPalette.UIComponentScreen
    public typealias FontPalette =
        DevSoftwareEngineerUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        DevSoftwareEngineerUIElementComponentPaletts.ConstantPalette.UIComponentScreen
}
