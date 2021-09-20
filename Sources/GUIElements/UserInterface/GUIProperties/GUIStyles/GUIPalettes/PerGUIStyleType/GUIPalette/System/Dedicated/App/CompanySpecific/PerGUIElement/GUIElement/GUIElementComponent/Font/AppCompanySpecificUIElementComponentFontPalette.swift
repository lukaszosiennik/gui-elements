//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificUIElementComponentFontPalette:
    AppUIElementComponentFontPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {}
}

extension AppCompanySpecificUIElementComponentFontPalette.UIElementComponent {
        
    public enum UIComponent:
        UIElementComponentFontPalette,
        AppUIPalette {}
    
    public enum UIComponentSet:
        UIElementComponentFontPalette,
        AppUIPalette {}
    
    public enum UIComponentGroup:
        UIElementComponentFontPalette,
        AppUIPalette {}
    
    public enum UIComponentScreen:
        UIElementComponentFontPalette,
        AppUIPalette {}
}
