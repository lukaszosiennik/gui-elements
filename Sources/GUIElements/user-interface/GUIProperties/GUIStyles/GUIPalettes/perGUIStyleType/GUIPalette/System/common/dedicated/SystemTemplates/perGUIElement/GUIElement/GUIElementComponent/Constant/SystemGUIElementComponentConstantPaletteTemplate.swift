//
//  Created by Łukasz Osiennik on 10/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum SystemGUIElementComponentConstantPaletteTemplate:
    SystemGUIElementComponentConstantPaletteInterface {
    
    fileprivate enum All {}
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {
        
        fileprivate typealias GUIElementComponentPalette =
            GUIElementComponent
        
        fileprivate typealias GUILookPalette =
            GUILook
        fileprivate enum GUILook {
            
            enum Property {
                
                enum BorderRadius {}
                enum BorderWidth {}
                enum FontSize {}
            }
        }
        
        fileprivate typealias GUILookParamsPalette =
            GUILookParams
        fileprivate enum GUILookParams {
            
            enum Property {
                 
                enum Size {
                    
                    enum Vertical {
                        
                        enum LinesNumber {}
                    }
                }
            }
        }
        
        fileprivate typealias GUILayoutParamsPalette =
            GUILayoutParams
        fileprivate enum GUILayoutParams {
            
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

extension SystemGUIElementComponentConstantPaletteTemplate.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentConstantPaletteInterface,
        SystemGUIPaletteInterface {
        
        enum Button {
            
            enum GUILook {}
            enum GUILookParams {}
            enum GUILayoutParams {}
        }
        
        enum Label {
            
            enum GUILook {}
            enum GUILookParams {}
            enum GUILayoutParams {}
        }
        
        enum TextArea {
            
            enum GUILook {}
            enum GUILookParams {}
            enum GUILayoutParams {}
        }
        
        enum TextField {
            
            enum GUILook {}
            enum GUILookParams {}
            enum GUILayoutParams {}
        }
        
        enum Placeholder {
            
            enum GUILook {}
            enum GUILookParams {}
            enum GUILayoutParams {}
        }
    }
    
    public enum GUIComponentSet:
        GUIElementComponentConstantPaletteInterface,
        SystemGUIPaletteInterface {
        
        enum NavigationMenuOption {
            
            enum GUILook {}
            enum GUILookParams {}
            enum GUILayoutParams {}
        }
    }
    
    public enum GUIComponentGroup:
        GUIElementComponentConstantPaletteInterface,
        SystemGUIPaletteInterface {
        
        enum Card {
            
            enum GUILook {}
            enum GUILookParams {}
            enum GUILayoutParams {}
        }
        
        enum NavigationMenu {
            
            enum GUILook {}
            enum GUILookParams {}
            enum GUILayoutParams {}
        }
    }
    
    public enum GUIComponentScreen:
        GUIElementComponentConstantPaletteInterface,
        SystemGUIPaletteInterface {
        
        enum Information {
            
            enum GUILook {}
            enum GUILookParams {}
            enum GUILayoutParams {}
        }
        
        enum NavigationMenu {
            
            enum GUILook {}
            enum GUILookParams {}
            enum GUILayoutParams {}
        }
    }
}
