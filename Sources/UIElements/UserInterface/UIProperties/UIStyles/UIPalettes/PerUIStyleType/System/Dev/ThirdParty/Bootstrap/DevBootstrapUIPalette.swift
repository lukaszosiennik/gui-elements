//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol DevBootstrapUIPalette:
    DevUIPalette {}

public protocol DevBootstrapUIPaletts:
    DevUIPaletts
where
    ColorPalette: DevBootstrapUIPalette,
    FontPalette: DevBootstrapUIPalette,
    ConstantPalette: DevBootstrapUIPalette {}

public struct DevBootstrapUIElementComponentPaletts:
    DevBootstrapUIPaletts {
    
    public typealias ColorPalette =
        DevBootstrapUIColorPalette.UIElementComponent
    public typealias FontPalette =
        DevBootstrapUIFontPalette
    public typealias ConstantPalette =
        DevBootstrapUIElementComponentConstantPalette.UIElementComponent
}

public struct DevBootstrapUIComponentPaletts:
    DevBootstrapUIPaletts {
    
    public typealias ColorPalette =
        DevBootstrapUIElementComponentPaletts.ColorPalette.UIComponent
    public typealias FontPalette =
        DevBootstrapUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        DevBootstrapUIElementComponentPaletts.ConstantPalette.UIComponent
}

public struct DevBootstrapUIComponentSetPaletts:
    DevBootstrapUIPaletts {
    
    public typealias ColorPalette =
        DevBootstrapUIElementComponentPaletts.ColorPalette.UIComponentSet
    public typealias FontPalette =
        DevBootstrapUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        DevBootstrapUIElementComponentPaletts.ConstantPalette.UIComponentSet
}

public struct DevBootstrapUIComponentGroupPaletts:
    DevBootstrapUIPaletts {
    
    public typealias ColorPalette =
        DevBootstrapUIElementComponentPaletts.ColorPalette.UIComponentGroup
    public typealias FontPalette =
        DevBootstrapUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        DevBootstrapUIElementComponentPaletts.ConstantPalette.UIComponentGroup
}

public struct DevBootstrapUIComponentScreenPaletts:
    DevBootstrapUIPaletts {
    
    public typealias ColorPalette =
        DevBootstrapUIElementComponentPaletts.ColorPalette.UIComponentScreen
    public typealias FontPalette =
        DevBootstrapUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        DevBootstrapUIElementComponentPaletts.ConstantPalette.UIComponentScreen
}
