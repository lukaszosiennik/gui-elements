//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public enum AppCompanySpecificGUIElementComponentConstantPalette:
    AppGUIElementComponentConstantPaletteInterface {
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {}
}

extension AppCompanySpecificGUIElementComponentConstantPalette.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentConstantPaletteInterface,
        AppGUIPaletteInterface {}
    
    public enum GUIComponentSet:
        GUIElementComponentConstantPaletteInterface,
        AppGUIPaletteInterface {}
    
    public enum GUIComponentGroup:
        GUIElementComponentConstantPaletteInterface,
        AppGUIPaletteInterface {}
    
    public enum GUIComponentScreen:
        GUIElementComponentConstantPaletteInterface,
        AppGUIPaletteInterface {}
}
