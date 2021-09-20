//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificUIElementComponentConstantPalette:
    AppUIElementComponentConstantPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {}
}

extension AppCompanySpecificUIElementComponentConstantPalette.UIElementComponent {
        
    public enum UIComponent:
        UIElementComponentConstantPalette,
        AppUIPalette {}
    
    public enum UIComponentSet:
        UIElementComponentConstantPalette,
        AppUIPalette {}
    
    public enum UIComponentGroup:
        UIElementComponentConstantPalette,
        AppUIPalette {}
    
    public enum UIComponentScreen:
        UIElementComponentConstantPalette,
        AppUIPalette {}
}
