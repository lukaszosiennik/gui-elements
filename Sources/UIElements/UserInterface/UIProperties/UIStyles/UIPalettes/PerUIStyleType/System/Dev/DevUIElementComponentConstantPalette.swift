//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

enum DevUIElementComponentConstantPalette:
    SystemUIPalette,
    UIElementComponentConstantPalette {
    
    fileprivate enum All {
        
        static let value_0 = DefaultUIElementComponentConstantPalette.All.value_0
        static let value_1: CGFloat = 1
        static let value_8: CGFloat = 8
        static let value_16: CGFloat = DefaultUIElementComponentConstantPalette.All.value_16
        static let value_50: CGFloat = 50
    }
    
    enum UIElementComponent {
        
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

extension DevUIElementComponentConstantPalette.UIElementComponent {
        
    enum UIComponent {}
    
    enum UIComponentSet {
        
        enum NavigationMenuOption {
            
            enum UILook {
                
                static let borderWidth_1: CGFloat = UILookPalette.Property.BorderWidth.value_1
            }
        }
    }
    
    enum UIComponentGroup {
        
        enum NavigationMenu {
            
            enum UILayoutParams {
                
                static let option_height_50: CGFloat = UILayoutParamsPalette.Property.Size.Vertical.Height.value_50
                static let options_space_8: CGFloat = UILayoutParamsPalette.Property.Space.value_8
                static let title_margin_top_16: CGFloat = UILayoutParamsPalette.Property.Margin.top_16
                static let title_margin_bottom_16: CGFloat = UILayoutParamsPalette.Property.Margin.bottom_16
            }
        }
    }
    
    enum UIComponentScreen {}
}
