//
//  Created by Łukasz Osiennik on 10/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum SystemGUIElementComponentFontPaletteTemplate:
    SystemGUIElementComponentFontPaletteInterface {
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {}
}

extension SystemGUIElementComponentFontPaletteTemplate.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentFontPaletteInterface,
        SystemGUIPaletteInterface {
        
        enum Button {}
        enum Label {}
        enum TextArea {}
        enum TextField {}
        enum Placeholder {}
    }
    
    public enum GUIComponentSet:
        GUIElementComponentFontPaletteInterface,
        SystemGUIPaletteInterface {
        
        enum NavigationMenuOption {}
    }
    
    public enum GUIComponentGroup:
        GUIElementComponentFontPaletteInterface,
        SystemGUIPaletteInterface {
        
        enum Card {}
        enum NavigationMenu {}
    }
    
    public enum GUIComponentScreen:
        GUIElementComponentFontPaletteInterface,
        SystemGUIPaletteInterface {
        
        enum Information {}
        enum NavigationMenu {}
    }
}
