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
