//
//  Created by Łukasz Osiennik on 10/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum SystemUIElementComponentColorPaletteTemplate:
    SystemUIElementComponentColorPaletteInterface {
    
    fileprivate enum All {}
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {
        
        fileprivate typealias UIElementComponentPalette =
            UIElementComponent
        
        fileprivate enum Property {
            
            enum Background {}
            enum Border {}
            enum Text {}
        }
    }
}

extension SystemUIElementComponentColorPaletteTemplate.UIElementComponent {
        
    public enum UIComponent:
        UIElementComponentColorPalette,
        SystemUIPalette {
        
        fileprivate enum Property {}
        
        enum Button {}
        enum Label {}
        enum TextArea {}
        enum TextField {}
        enum Placeholder {}
    }
    
    public enum UIComponentSet:
        UIElementComponentColorPalette,
        SystemUIPalette {
        
        fileprivate enum Property {}
        
        enum NavigationMenuOption {}
    }
    
    public enum UIComponentGroup:
        UIElementComponentColorPalette,
        SystemUIPalette {
        
        fileprivate enum Property {}
        
        enum Card {}
        enum NavigationMenu {}
    }
    
    public enum UIComponentScreen:
        UIElementComponentColorPalette,
        SystemUIPalette {
        
        fileprivate enum Property {}
        
        enum Information {}
        enum NavigationMenu {}
    }
}
