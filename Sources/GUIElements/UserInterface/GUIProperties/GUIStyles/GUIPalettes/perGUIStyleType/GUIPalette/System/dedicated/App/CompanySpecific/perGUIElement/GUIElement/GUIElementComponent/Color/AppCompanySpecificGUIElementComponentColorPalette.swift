//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificGUIElementComponentColorPalette:
    AppGUIElementComponentColorPaletteInterface {
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {}
}

extension AppCompanySpecificGUIElementComponentColorPalette.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentColorPalette,
        AppGUIPalette {}
    
    public enum GUIComponentSet:
        GUIElementComponentColorPalette,
        AppGUIPalette {}
    
    public enum GUIComponentGroup:
        GUIElementComponentColorPalette,
        AppGUIPalette {}
    
    public enum GUIComponentScreen:
        GUIElementComponentColorPalette,
        AppGUIPalette {}
}
