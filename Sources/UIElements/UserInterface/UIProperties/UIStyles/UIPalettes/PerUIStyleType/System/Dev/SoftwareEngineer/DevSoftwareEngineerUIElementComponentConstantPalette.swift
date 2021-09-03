//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public enum DevSoftwareEngineerUIElementComponentConstantPalette {
    
    fileprivate enum All {
        
        static let value_0: CGFloat = DefaultUIElementComponentConstantPalette.All.value_0
        static let value_1: CGFloat = 1
        static let value_8: CGFloat = 8
        static let value_12: CGFloat = 12
        static let value_16: CGFloat = DefaultUIElementComponentConstantPalette.All.value_16
        static let value_50: CGFloat = 50
    }
    
    public enum UIElementComponent {
        
        fileprivate typealias UIElementComponentPalette = UIElementComponent
        
        fileprivate typealias UILookPalette = UILook
        fileprivate enum UILook {
            
            enum Property {
                
                enum BorderRadius {}
                
                enum BorderWidth {
                    
                    static let value_1: CGFloat = All.value_1
                }
                
                enum FontSize {}
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
    
    enum UILayout {}
}

extension DevSoftwareEngineerUIElementComponentConstantPalette.UIElementComponent {
        
    public enum UIComponent:
        DevSoftwareEngineerUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentSet:
        DevSoftwareEngineerUIPalette,
        UIElementComponentConstantPalette {
        
        enum NavigationMenuOption {
            
            enum UILook {
                
                static let borderWidth_1: CGFloat = UILookPalette.Property.BorderWidth.value_1
            }
        }
    }
    
    public enum UIComponentGroup:
        DevSoftwareEngineerUIPalette,
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
        
        enum NavigationMenu {
            
            enum UILayoutParams {
                
                static let height_50: CGFloat = UILayoutParamsPalette.Property.Size.Vertical.Height.value_50
                static let space_8: CGFloat = UILayoutParamsPalette.Property.Space.value_8
                static let margin_top_16: CGFloat = UILayoutParamsPalette.Property.Margin.top_16
                static let margin_bottom_16: CGFloat = UILayoutParamsPalette.Property.Margin.bottom_16
            }
        }
    }
    
    public enum UIComponentScreen:
        DevSoftwareEngineerUIPalette,
        UIElementComponentConstantPalette {}
}
