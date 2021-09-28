//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public enum DevSoftwareEngineerGUIElementComponentConstantPalette:
    DevGUIElementComponentConstantPaletteInterface {
    
    fileprivate enum All {
        
        static let value_0: CGFloat = DefaultGUIElementComponentConstantPalette.All.value_0
        static let value_1: CGFloat = 1
        static let value_8: CGFloat = 8
        static let value_16: CGFloat = DefaultGUIElementComponentConstantPalette.All.value_16
        static let value_50: CGFloat = 50
    }
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {
        
        fileprivate typealias GUIElementComponentPalette =
            GUIElementComponent
        
        fileprivate typealias GUILookPalette =
            GUILook
        fileprivate enum GUILook {
            
            enum Property {
                
                enum BorderRadius {}
                
                enum BorderWidth {
                    
                    static let value_1: CGFloat = All.value_1
                }
                
                enum FontSize {}
            }
        }
        
        fileprivate typealias GUILookParamsPalette =
            GUILookParams
        fileprivate enum GUILookParams {}
        
        fileprivate typealias GUILayoutParamsPalette =
            GUILayoutParams
        fileprivate enum GUILayoutParams {
            
            enum Property {
                
                enum Margin {
                    
                    static let top_16: CGFloat = All.value_16
                    static let bottom_16: CGFloat = All.value_16
                }
                
                enum Size {
                    
                    enum Horizontal {}
                    
                    enum Vertical {
                        
                        enum Height {
                            
                            static let value_50: CGFloat = All.value_50
                        }
                    }
                }
                
                enum Space {
                    
                    static let value_8: CGFloat = All.value_8
                }
            }
        }
    }
    
    enum GUILayout {}
}

extension DevSoftwareEngineerGUIElementComponentConstantPalette.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentConstantPaletteInterface,
        DevGUIPaletteInterface {}
    
    public enum GUIComponentSet:
        GUIElementComponentConstantPaletteInterface,
        DevGUIPaletteInterface {
        
        enum NavigationMenuOption {
            
            enum GUILook {
                
                static let borderWidth_1: CGFloat = GUILookPalette.Property.BorderWidth.value_1
            }
        }
    }
    
    public enum GUIComponentGroup:
        GUIElementComponentConstantPaletteInterface,
        DevGUIPaletteInterface {
        
        enum Card {
            
            enum GUILook {
                
                static let borderWidth_1: CGFloat = DevBootstrapGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentGroup.Card.GUILook.borderWidth_1
            }
            
            enum GUILayoutParams {
                
                static let margin_top_12: CGFloat = DevBootstrapGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentGroup.Card.GUILayoutParams.margin_top_12
                static let margin_bottom_12: CGFloat = DevBootstrapGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentGroup.Card.GUILayoutParams.margin_bottom_12
                
                static let margin_left_16: CGFloat = DevBootstrapGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentGroup.Card.GUILayoutParams.margin_left_16
                static let margin_right_16: CGFloat = DevBootstrapGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentGroup.Card.GUILayoutParams.margin_right_16
                static let margin_top_16: CGFloat = DevBootstrapGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentGroup.Card.GUILayoutParams.margin_top_16
                static let margin_bottom_16: CGFloat = DevBootstrapGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentGroup.Card.GUILayoutParams.margin_bottom_16
            }
        }
        
        enum NavigationMenu {
            
            enum GUILayoutParams {
                
                static let height_50: CGFloat = GUILayoutParamsPalette.Property.Size.Vertical.Height.value_50
                static let space_8: CGFloat = GUILayoutParamsPalette.Property.Space.value_8
                static let margin_top_16: CGFloat = GUILayoutParamsPalette.Property.Margin.top_16
                static let margin_bottom_16: CGFloat = GUILayoutParamsPalette.Property.Margin.bottom_16
            }
        }
    }
    
    public enum GUIComponentScreen:
        GUIElementComponentConstantPaletteInterface,
        DevGUIPaletteInterface {}
}
