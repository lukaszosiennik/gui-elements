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
        GUIElementComponentFontPalette,
        AppGUIPalette {}
    
    public enum GUIComponentSet:
        GUIElementComponentFontPalette,
        AppGUIPalette {}
    
    public enum GUIComponentGroup:
        GUIElementComponentFontPalette,
        AppGUIPalette {}
    
    public enum GUIComponentScreen:
        GUIElementComponentFontPalette,
        AppGUIPalette {}
}
