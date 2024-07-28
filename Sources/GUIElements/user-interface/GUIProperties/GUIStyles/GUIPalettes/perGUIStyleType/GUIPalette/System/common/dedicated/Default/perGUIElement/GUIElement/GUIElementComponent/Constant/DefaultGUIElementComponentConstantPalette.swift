//
//  Created by Łukasz Osiennik on 18/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

import UIKit

public enum DefaultGUIElementComponentConstantPalette:
    SystemGUIElementComponentConstantPaletteInterface {
    
    enum All {
        
        static let value_0: CGFloat = 0
        static let value_4: CGFloat = 4
        static let value_16: CGFloat = 16
        static let value_100: CGFloat = 100
    }
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {
        
        fileprivate typealias GUILookParamsPalette =
            GUILookParams
        fileprivate enum GUILookParams {
            
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
        
        fileprivate typealias GUILayoutParamsPalette =
            GUILayoutParams
        fileprivate enum GUILayoutParams {
            
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

extension DefaultGUIElementComponentConstantPalette.GUIElementComponent {
    
    public enum GUIComponent:
        GUIElementComponentConstantPaletteInterface,
        DefaultGUIPaletteInterface {
        
        enum Placeholder {
            
            enum GUILayoutParams {
                
                static let height_100: CGFloat = GUILayoutParamsPalette.Property.Size.Vertical.Height.value_100
            }
        }
    }
    
    public enum GUIComponentSet:
        GUIElementComponentConstantPaletteInterface,
        DefaultGUIPaletteInterface {}
    
    public enum GUIComponentGroup:
        GUIElementComponentConstantPaletteInterface,
        DefaultGUIPaletteInterface {
        
        enum NavigationMenu {
            
            enum GUILookParams {
                
                static let title_linesNumber_0: Int = Int(GUILookParamsPalette.Property.Size.Vertical.LinesNumber.value_0)
            }
            
            enum GUILayoutParams {
                
                static let options_space_0: CGFloat = GUILayoutParamsPalette.Property.Space.value_0
                static let title_margin_top_4: CGFloat = GUILayoutParamsPalette.Property.Margin.top_4
                static let title_margin_bottom_4: CGFloat = GUILayoutParamsPalette.Property.Margin.bottom_4
            }
        }
    }
    
    public enum GUIComponentScreen:
        GUIElementComponentConstantPaletteInterface,
        DefaultGUIPaletteInterface {
        
        enum Information {
            
            enum GUILookParams {
                
                static let title_linesNumber_0: Int = Int(GUILookParamsPalette.Property.Size.Vertical.LinesNumber.value_0)
            }
        }
            
        enum NavigationMenu {
            
            enum GUILayoutParams {
            
                static let margin_left_16: CGFloat = GUILayoutParamsPalette.Property.Margin.left_16
                static let margin_right_16: CGFloat = GUILayoutParamsPalette.Property.Margin.right_16
            }
        }
    }
}
