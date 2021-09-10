//
//  Created by Łukasz Osiennik on 18/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public enum DefaultUIElementComponentConstantPalette:
    SystemUIElementComponentConstantPaletteInterface {
    
    enum All {
        
        static let value_0: CGFloat = 0
        static let value_4: CGFloat = 4
        static let value_16: CGFloat = 16
        static let value_100: CGFloat = 100
    }
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {
        
        fileprivate typealias UILookParamsPalette =
            UILookParams
        fileprivate enum UILookParams {
            
            enum Property {
                 
                enum Size {
                    
                    enum Vertical {
                        
                        enum LinesNumber {
                            
                            static let value_0: CGFloat = All.value_0
                        }
                    }
                }
            }
        }
        
        fileprivate typealias UILayoutParamsPalette =
            UILayoutParams
        fileprivate enum UILayoutParams {
            
            enum Property {
                
                enum Margin {
                    
                    static let top_4: CGFloat = All.value_4
                    static let bottom_4: CGFloat = All.value_4
                    static let left_16: CGFloat = All.value_16
                    static let right_16: CGFloat = All.value_16
                }
                
                enum Size {
                    
                    enum Horizontal {}
                    
                    enum Vertical {
                        
                        enum Height {
                            
                            static let value_100: CGFloat = All.value_100
                        }
                    }
                }
                
                enum Space {
                    
                    static let value_0: CGFloat = All.value_0
                }
            }
        }
    }
}

extension DefaultUIElementComponentConstantPalette.UIElementComponent {
    
    public enum UIComponent:
        UIElementComponentConstantPalette,
        DefaultUIPalette {
        
        enum Placeholder {
            
            enum UILayoutParams {
                
                static let height_100: CGFloat = UILayoutParamsPalette.Property.Size.Vertical.Height.value_100
            }
        }
    }
    
    public enum UIComponentSet:
        UIElementComponentConstantPalette,
        DefaultUIPalette {}
    
    public enum UIComponentGroup:
        UIElementComponentConstantPalette,
        DefaultUIPalette {
        
        enum NavigationMenu {
            
            enum UILookParams {
                
                static let title_linesNumber_0: Int = Int(UILookParamsPalette.Property.Size.Vertical.LinesNumber.value_0)
            }
            
            enum UILayoutParams {
                
                static let options_space_0: CGFloat = UILayoutParamsPalette.Property.Space.value_0
                static let title_margin_top_4: CGFloat = UILayoutParamsPalette.Property.Margin.top_4
                static let title_margin_bottom_4: CGFloat = UILayoutParamsPalette.Property.Margin.bottom_4
            }
        }
    }
    
    public enum UIComponentScreen:
        UIElementComponentConstantPalette,
        DefaultUIPalette {
        
        enum Information {
            
            enum UILookParams {
                
                static let title_linesNumber_0: Int = Int(UILookParamsPalette.Property.Size.Vertical.LinesNumber.value_0)
            }
        }
            
        enum NavigationMenu {
            
            enum UILayoutParams {
            
                static let margin_left_16: CGFloat = UILayoutParamsPalette.Property.Margin.left_16
                static let margin_right_16: CGFloat = UILayoutParamsPalette.Property.Margin.right_16
            }
        }
    }
}
