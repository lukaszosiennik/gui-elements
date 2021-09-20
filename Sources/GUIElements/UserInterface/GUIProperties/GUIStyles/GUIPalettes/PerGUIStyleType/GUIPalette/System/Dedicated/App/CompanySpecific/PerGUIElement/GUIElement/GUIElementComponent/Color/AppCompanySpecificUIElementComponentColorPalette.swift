//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificUIElementComponentColorPalette:
    AppUIElementComponentColorPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {}
}

extension AppCompanySpecificUIElementComponentColorPalette.UIElementComponent {
        
    public enum UIComponent:
        UIElementComponentColorPalette,
        AppUIPalette {}
    
    public enum UIComponentSet:
        UIElementComponentColorPalette,
        AppUIPalette {}
    
    public enum UIComponentGroup:
        UIElementComponentColorPalette,
        AppUIPalette {}
    
    public enum UIComponentScreen:
        UIElementComponentColorPalette,
        AppUIPalette {}
}
