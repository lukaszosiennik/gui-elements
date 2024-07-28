//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public enum AppCompanySpecificGUIElementComponentColorPalette:
    AppGUIElementComponentColorPaletteInterface {
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {}
}

extension AppCompanySpecificGUIElementComponentColorPalette.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentColorPaletteInterface,
        AppGUIPaletteInterface {}
    
    public enum GUIComponentSet:
        GUIElementComponentColorPaletteInterface,
        AppGUIPaletteInterface {}
    
    public enum GUIComponentGroup:
        GUIElementComponentColorPaletteInterface,
        AppGUIPaletteInterface {}
    
    public enum GUIComponentScreen:
        GUIElementComponentColorPaletteInterface,
        AppGUIPaletteInterface {}
}
