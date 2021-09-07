//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol AppCompanySpecificUIPalette:
    AppUIPalette {}

public protocol AppCompanySpecificUIPaletts:
    AppUIPaletts
where
    ColorPalette: AppCompanySpecificUIPalette,
    FontPalette: AppCompanySpecificUIPalette,
    ConstantPalette: AppCompanySpecificUIPalette {}

public struct AppCompanySpecificUIElementComponentPaletts:
    AppCompanySpecificUIPaletts {
    
    public typealias ColorPalette =
        AppCompanySpecificUIColorPalette.UIElementComponent
    public typealias FontPalette =
        AppCompanySpecificUIFontPalette
    public typealias ConstantPalette =
        AppCompanySpecificUIElementComponentConstantPalette.UIElementComponent
}

public struct AppCompanySpecificUIComponentPaletts:
    AppCompanySpecificUIPaletts {
    
    public typealias ColorPalette =
        AppCompanySpecificUIElementComponentPaletts.ColorPalette.UIComponent
    public typealias FontPalette =
        AppCompanySpecificUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        AppCompanySpecificUIElementComponentPaletts.ConstantPalette.UIComponent
}

public struct AppCompanySpecificUIComponentSetPaletts:
    AppCompanySpecificUIPaletts {
    
    public typealias ColorPalette =
        AppCompanySpecificUIElementComponentPaletts.ColorPalette.UIComponentSet
    public typealias FontPalette =
        AppCompanySpecificUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        AppCompanySpecificUIElementComponentPaletts.ConstantPalette.UIComponentSet
}

public struct AppCompanySpecificUIComponentGroupPaletts:
    AppCompanySpecificUIPaletts {
    
    public typealias ColorPalette =
        AppCompanySpecificUIElementComponentPaletts.ColorPalette.UIComponentGroup
    public typealias FontPalette =
        AppCompanySpecificUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        AppCompanySpecificUIElementComponentPaletts.ConstantPalette.UIComponentGroup
}

public struct AppCompanySpecificUIComponentScreenPaletts:
    AppCompanySpecificUIPaletts {
    
    public typealias ColorPalette =
        AppCompanySpecificUIElementComponentPaletts.ColorPalette.UIComponentScreen
    public typealias FontPalette =
        AppCompanySpecificUIElementComponentPaletts.FontPalette
    public typealias ConstantPalette =
        AppCompanySpecificUIElementComponentPaletts.ConstantPalette.UIComponentScreen
}
