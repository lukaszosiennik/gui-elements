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
        AppUIPalette,
        UIElementComponentFontPalette {}
    
    public enum UIComponentSet:
        AppUIPalette,
        UIElementComponentFontPalette {}
    
    public enum UIComponentGroup:
        AppUIPalette,
        UIElementComponentFontPalette {}
    
    public enum UIComponentScreen:
        AppUIPalette,
        UIElementComponentFontPalette {}
}
