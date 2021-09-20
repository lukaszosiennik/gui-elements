//
//  Created by Łukasz Osiennik on 10/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum SystemUIElementComponentFontPaletteTemplate:
    SystemUIElementComponentFontPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {}
}

extension SystemUIElementComponentFontPaletteTemplate.UIElementComponent {
        
    public enum UIComponent:
        UIElementComponentFontPalette,
        SystemUIPalette {
        
        enum Button {}
        enum Label {}
        enum TextArea {}
        enum TextField {}
        enum Placeholder {}
    }
    
    public enum UIComponentSet:
        UIElementComponentFontPalette,
        SystemUIPalette {
        
        enum NavigationMenuOption {}
    }
    
    public enum UIComponentGroup:
        UIElementComponentFontPalette,
        SystemUIPalette {
        
        enum Card {}
        enum NavigationMenu {}
    }
    
    public enum UIComponentScreen:
        UIElementComponentFontPalette,
        SystemUIPalette {
        
        enum Information {}
        enum NavigationMenu {}
    }
}
