//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificGUIElementComponentFontPalette:
    AppGUIElementComponentFontPaletteInterface {
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {}
}

extension AppCompanySpecificGUIElementComponentFontPalette.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentFontPaletteInterface,
        AppGUIPaletteInterface {}
    
    public enum GUIComponentSet:
        GUIElementComponentFontPaletteInterface,
        AppGUIPaletteInterface {}
    
    public enum GUIComponentGroup:
        GUIElementComponentFontPaletteInterface,
        AppGUIPaletteInterface {}
    
    public enum GUIComponentScreen:
        GUIElementComponentFontPaletteInterface,
        AppGUIPaletteInterface {}
}
