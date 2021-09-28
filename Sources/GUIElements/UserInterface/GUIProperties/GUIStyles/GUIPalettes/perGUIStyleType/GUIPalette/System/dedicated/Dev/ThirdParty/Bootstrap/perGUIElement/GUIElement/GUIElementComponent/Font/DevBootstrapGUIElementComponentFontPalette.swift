//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevBootstrapGUIElementComponentFontPalette:
    DevGUIElementComponentFontPaletteInterface {
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {}
}

extension DevBootstrapGUIElementComponentFontPalette.GUIElementComponent {
        
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
