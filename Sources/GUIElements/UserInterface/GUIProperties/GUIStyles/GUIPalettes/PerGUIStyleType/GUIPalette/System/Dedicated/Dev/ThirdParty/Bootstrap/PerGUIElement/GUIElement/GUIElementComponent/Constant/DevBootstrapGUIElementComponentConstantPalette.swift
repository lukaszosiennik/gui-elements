//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public enum DevBootstrapGUIElementComponentConstantPalette:
    DevGUIElementComponentConstantPaletteInterface {
    
    fileprivate enum All {
        
        static let value_1: CGFloat = 1
        static let value_12: CGFloat = 12
        static let value_16: CGFloat = DefaultGUIElementComponentConstantPalette.All.value_16
    }
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {
        
        fileprivate typealias GUIElementComponentPalette =
            GUIElementComponent
        
        fileprivate typealias GUILookPalette =
            GUILook
        fileprivate enum GUILook {
            
            enum Property {
                
                enum BorderWidth {
                    
                    static let value_1: CGFloat = All.value_1
                }
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
                    
                    static let top_12: CGFloat = All.value_12
                    static let bottom_12: CGFloat = All.value_12
                    
                    static let left_16: CGFloat = All.value_16
                    static let right_16: CGFloat = All.value_16
                    static let top_16: CGFloat = All.value_16
                    static let bottom_16: CGFloat = All.value_16
                }
            }
        }
    }
}

extension DevBootstrapGUIElementComponentConstantPalette.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentConstantPalette,
        DevGUIPalette {}
    
    public enum GUIComponentSet:
        GUIElementComponentConstantPalette,
        DevGUIPalette {}
    
    public enum GUIComponentGroup:
        GUIElementComponentConstantPalette,
        DevGUIPalette {
        
        enum Card {
            
            enum GUILook {
                
                static let borderWidth_1: CGFloat = GUILookPalette.Property.BorderWidth.value_1
            }
            
            enum GUILayoutParams {
                
                static let margin_top_12: CGFloat = GUILayoutParamsPalette.Property.Margin.top_12
                static let margin_bottom_12: CGFloat = GUILayoutParamsPalette.Property.Margin.bottom_12
                
                static let margin_left_16: CGFloat = GUILayoutParamsPalette.Property.Margin.left_16
                static let margin_right_16: CGFloat = GUILayoutParamsPalette.Property.Margin.right_16
                static let margin_top_16: CGFloat = GUILayoutParamsPalette.Property.Margin.top_16
                static let margin_bottom_16: CGFloat = GUILayoutParamsPalette.Property.Margin.bottom_16
            }
        }
    }
    
    public enum GUIComponentScreen:
        GUIElementComponentConstantPalette,
        DevGUIPalette {}
}
