//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificUIElementComponentColorPalette:
    AppUIElementComponentColorPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface,
        AppUIPalette,
        UIElementComponentColorPalette {}
}

extension AppCompanySpecificUIElementComponentColorPalette.UIElementComponent {
        
    public enum UIComponent:
        AppUIPalette,
        UIElementComponentColorPalette {}
    
    public enum UIComponentSet:
        AppUIPalette,
        UIElementComponentColorPalette {}
    
    public enum UIComponentGroup:
        AppUIPalette,
        UIElementComponentColorPalette {}
    
    public enum UIComponentScreen:
        AppUIPalette,
        UIElementComponentColorPalette {}
}
