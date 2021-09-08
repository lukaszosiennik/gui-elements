//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificUIElementFontPalette:
    AppUIElementFontPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface,
        AppUIPalette,
        UIFontPalette {}
}

extension AppCompanySpecificUIElementFontPalette.UIElementComponent {
        
    public enum UIComponent:
        AppUIPalette,
        UIFontPalette {}
    
    public enum UIComponentSet:
        AppUIPalette,
        UIFontPalette {}
    
    public enum UIComponentGroup:
        AppUIPalette,
        UIFontPalette {}
    
    public enum UIComponentScreen:
        AppUIPalette,
        UIFontPalette {}
}
