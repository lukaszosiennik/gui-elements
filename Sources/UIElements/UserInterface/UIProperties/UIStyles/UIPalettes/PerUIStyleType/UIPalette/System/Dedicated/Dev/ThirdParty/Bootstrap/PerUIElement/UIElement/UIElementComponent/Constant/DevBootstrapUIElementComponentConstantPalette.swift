//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public enum DevBootstrapUIElementComponentConstantPalette:
    DevUIElementComponentConstantPaletteInterface {
    
    fileprivate enum All {
        
        static let value_1: CGFloat = 1
        static let value_12: CGFloat = 12
        static let value_16: CGFloat = DefaultUIElementComponentConstantPalette.All.value_16
    }
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {
        
        fileprivate typealias UIElementComponentPalette = UIElementComponent
        
        fileprivate typealias UILookPalette = UILook
        fileprivate enum UILook {
            
            enum Property {
                
                enum BorderWidth {
                    
                    static let value_1: CGFloat = All.value_1
                }
            }
        }
        
        fileprivate typealias UILookParamsPalette = UILookParams
        fileprivate enum UILookParams {}
        
        fileprivate typealias UILayoutParamsPalette = UILayoutParams
        fileprivate enum UILayoutParams {
            
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

extension DevBootstrapUIElementComponentConstantPalette.UIElementComponent {
        
    public enum UIComponent:
        DevUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentSet:
        DevUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentGroup:
        DevUIPalette,
        UIElementComponentConstantPalette {
        
        enum Card {
            
            enum UILook {
                
                static let borderWidth_1: CGFloat = UILookPalette.Property.BorderWidth.value_1
            }
            
            enum UILayoutParams {
                
                static let margin_top_12: CGFloat = UILayoutParamsPalette.Property.Margin.top_12
                static let margin_bottom_12: CGFloat = UILayoutParamsPalette.Property.Margin.bottom_12
                
                static let margin_left_16: CGFloat = UILayoutParamsPalette.Property.Margin.left_16
                static let margin_right_16: CGFloat = UILayoutParamsPalette.Property.Margin.right_16
                static let margin_top_16: CGFloat = UILayoutParamsPalette.Property.Margin.top_16
                static let margin_bottom_16: CGFloat = UILayoutParamsPalette.Property.Margin.bottom_16
            }
        }
    }
    
    public enum UIComponentScreen:
        DevUIPalette,
        UIElementComponentConstantPalette {}
}
