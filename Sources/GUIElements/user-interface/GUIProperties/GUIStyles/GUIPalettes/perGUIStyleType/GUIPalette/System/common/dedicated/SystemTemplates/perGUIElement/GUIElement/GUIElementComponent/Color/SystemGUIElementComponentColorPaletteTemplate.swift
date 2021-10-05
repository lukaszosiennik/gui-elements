//
//  Created by Łukasz Osiennik on 10/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum SystemGUIElementComponentColorPaletteTemplate:
    SystemGUIElementComponentColorPaletteInterface {
    
    fileprivate enum All {}
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {
        
        fileprivate typealias GUIElementComponentPalette =
            GUIElementComponent
        
        fileprivate enum Property {
            
            enum Background {}
            enum Border {}
            enum Text {}
        }
    }
}

extension SystemGUIElementComponentColorPaletteTemplate.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentColorPaletteInterface,
        SystemGUIPaletteInterface {
        
        fileprivate enum Property {}
        
        enum Button {}
        enum Label {}
        enum TextArea {}
        enum TextField {}
        enum Placeholder {}
    }
    
    public enum GUIComponentSet:
        GUIElementComponentColorPaletteInterface,
        SystemGUIPaletteInterface {
        
        fileprivate enum Property {}
        
        enum NavigationMenuOption {}
    }
    
    public enum GUIComponentGroup:
        GUIElementComponentColorPaletteInterface,
        SystemGUIPaletteInterface {
        
        fileprivate enum Property {}
        
        enum Card {}
        enum NavigationMenu {}
    }
    
    public enum GUIComponentScreen:
        GUIElementComponentColorPaletteInterface,
        SystemGUIPaletteInterface {
        
        fileprivate enum Property {}
        
        enum Information {}
        enum NavigationMenu {}
    }
}
