//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public enum DevSoftwareEngineerGUIElementComponentFontPalette:
    DevGUIElementComponentFontPaletteInterface {
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {}
}

extension DevSoftwareEngineerGUIElementComponentFontPalette.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentFontPaletteInterface,
        DevGUIPaletteInterface {}
    
    public enum GUIComponentSet:
        GUIElementComponentFontPaletteInterface,
        DevGUIPaletteInterface {}
    
    public enum GUIComponentGroup:
        GUIElementComponentFontPaletteInterface,
        DevGUIPaletteInterface {}
    
    public enum GUIComponentScreen:
        GUIElementComponentFontPaletteInterface,
        DevGUIPaletteInterface {}
}
