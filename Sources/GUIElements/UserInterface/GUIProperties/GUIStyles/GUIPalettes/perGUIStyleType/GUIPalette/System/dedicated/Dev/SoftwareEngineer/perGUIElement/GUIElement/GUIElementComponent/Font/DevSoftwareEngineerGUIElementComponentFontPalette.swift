//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevSoftwareEngineerGUIElementComponentFontPalette:
    DevGUIElementComponentFontPaletteInterface {
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {}
}

extension DevSoftwareEngineerGUIElementComponentFontPalette.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentFontPalette,
        DevGUIPalette {}
    
    public enum GUIComponentSet:
        GUIElementComponentFontPalette,
        DevGUIPalette {}
    
    public enum GUIComponentGroup:
        GUIElementComponentFontPalette,
        DevGUIPalette {}
    
    public enum GUIComponentScreen:
        GUIElementComponentFontPalette,
        DevGUIPalette {}
}
