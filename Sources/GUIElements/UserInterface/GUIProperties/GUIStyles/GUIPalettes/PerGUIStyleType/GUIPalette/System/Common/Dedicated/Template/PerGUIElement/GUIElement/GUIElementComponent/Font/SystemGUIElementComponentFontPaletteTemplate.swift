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
        GUIElementComponentFontPalette,
        SystemGUIPalette {
        
        enum Button {}
        enum Label {}
        enum TextArea {}
        enum TextField {}
        enum Placeholder {}
    }
    
    public enum GUIComponentSet:
        GUIElementComponentFontPalette,
        SystemGUIPalette {
        
        enum NavigationMenuOption {}
    }
    
    public enum GUIComponentGroup:
        GUIElementComponentFontPalette,
        SystemGUIPalette {
        
        enum Card {}
        enum NavigationMenu {}
    }
    
    public enum GUIComponentScreen:
        GUIElementComponentFontPalette,
        SystemGUIPalette {
        
        enum Information {}
        enum NavigationMenu {}
    }
}
