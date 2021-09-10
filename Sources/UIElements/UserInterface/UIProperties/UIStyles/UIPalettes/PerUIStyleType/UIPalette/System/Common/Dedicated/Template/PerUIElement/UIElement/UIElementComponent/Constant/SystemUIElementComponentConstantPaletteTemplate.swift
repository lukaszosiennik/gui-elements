//
//  Created by Łukasz Osiennik on 10/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum SystemUIElementComponentConstantPaletteTemplate:
    SystemUIElementComponentConstantPaletteInterface {
    
    fileprivate enum All {}
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {
        
        fileprivate typealias UIElementComponentPalette =
            UIElementComponent
        
        fileprivate typealias UILookPalette =
            UILook
        fileprivate enum UILook {
            
            enum Property {
                
                enum BorderRadius {}
                enum BorderWidth {}
                enum FontSize {}
            }
        }
        
        fileprivate typealias UILookParamsPalette =
            UILookParams
        fileprivate enum UILookParams {
            
            enum Property {
                 
                enum Size {
                    
                    enum Vertical {
                        
                        enum LinesNumber {}
                    }
                }
            }
        }
        
        fileprivate typealias UILayoutParamsPalette =
            UILayoutParams
        fileprivate enum UILayoutParams {
            
            enum Property {
                
                enum Margin {}
                
                enum Size {
                    
                    enum Horizontal {
                        
                        enum Width {}
                    }
                    
                    enum Vertical {
                        
                        enum Height {}
                    }
                }
                
                enum Space {}
            }
        }
    }
}

extension SystemUIElementComponentConstantPaletteTemplate.UIElementComponent {
        
    public enum UIComponent:
        UIElementComponentConstantPalette,
        SystemUIPalette {
        
        enum Button {
            
            enum UILook {}
            enum UILookParams {}
            enum UILayoutParams {}
        }
        
        enum Label {
            
            enum UILook {}
            enum UILookParams {}
            enum UILayoutParams {}
        }
        
        enum TextArea {
            
            enum UILook {}
            enum UILookParams {}
            enum UILayoutParams {}
        }
        
        enum TextField {
            
            enum UILook {}
            enum UILookParams {}
            enum UILayoutParams {}
        }
        
        enum Placeholder {
            
            enum UILook {}
            enum UILookParams {}
            enum UILayoutParams {}
        }
    }
    
    public enum UIComponentSet:
        UIElementComponentConstantPalette,
        SystemUIPalette {
        
        enum NavigationMenuOption {
            
            enum UILook {}
            enum UILookParams {}
            enum UILayoutParams {}
        }
    }
    
    public enum UIComponentGroup:
        UIElementComponentConstantPalette,
        SystemUIPalette {
        
        enum Card {
            
            enum UILook {}
            enum UILookParams {}
            enum UILayoutParams {}
        }
        
        enum NavigationMenu {
            
            enum UILook {}
            enum UILookParams {}
            enum UILayoutParams {}
        }
    }
    
    public enum UIComponentScreen:
        UIElementComponentConstantPalette,
        SystemUIPalette {
        
        enum Information {
            
            enum UILook {}
            enum UILookParams {}
            enum UILayoutParams {}
        }
        
        enum NavigationMenu {
            
            enum UILook {}
            enum UILookParams {}
            enum UILayoutParams {}
        }
    }
}
