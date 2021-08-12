//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

enum DevUIElementComponentConstantPalette: UIElementComponentConstantPalette {
    
    fileprivate enum All {
        
        static let value_0: CGFloat = 0
        static let value_1: CGFloat = 1
        static let value_8: CGFloat = 8
        static let value_16: CGFloat = 16
        static let value_50: CGFloat = 50
        static let value_150: CGFloat = 150
    }
    
    enum UIElementComponent {
        
        fileprivate enum Property {
            
            enum Size {
                
                enum Vertical {
                    
                    enum Height {
                        
                        static let value_50: CGFloat = All.value_50
                        static let value_150: CGFloat = All.value_150
                    }
                    
                    enum LinesNumber {
                        
                        static let value_0: CGFloat = All.value_0
                        static let value_1: CGFloat = All.value_1
                    }
                }
                
                enum Horizontal {}
            }
        
            enum FontSize {}
            
            enum BorderWidth {
                
                static let value_1: CGFloat = All.value_1
            }
            
            enum BorderRadius {}
        }
    }
    
    enum UILayout {
            
        fileprivate enum Margin {
            
            static let left_16: CGFloat = All.value_16
            static let right_16: CGFloat = All.value_16
            static let top_16: CGFloat = All.value_16
            static let bottom_16: CGFloat = All.value_16
        }
        
        fileprivate enum Space {
            
            static let value_8: CGFloat = All.value_8
        }
    }
}

extension DevUIElementComponentConstantPalette.UIElementComponent {
        
    enum UIComponent {
        
        enum LabelUIComponent {
            
            static let linesNumber_0: Int = Int(Property.Size.Vertical.LinesNumber.value_0)
            static let linesNumber_1: Int = Int(Property.Size.Vertical.LinesNumber.value_1)
        }
        
        enum Placeholder {
            
            static let height_150: CGFloat = Property.Size.Vertical.Height.value_150
        }
    }
    
    enum UIComponentSet {
        
        enum NavigationMenuOption {
            
            static let borderWidth_1: CGFloat = Property.BorderWidth.value_1
        }
    }
    
    enum UIComponentGroup {
        
        enum NavigationMenu {
            
            static let optionSizeHeight_50: CGFloat = Property.Size.Vertical.Height.value_50
        }
    }
    
    enum UIComponentScreen {}
}

extension DevUIElementComponentConstantPalette.UILayout {
        
    enum UIComponent {}
    
    enum UIComponentSet {}
    
    enum UIComponentGroup {
        
        enum NavigationMenu {
            
            static let titleMarginTop_16: CGFloat = Margin.top_16
            static let titleMarginBottom_16: CGFloat = Margin.bottom_16
            static let optionsSpace_8: CGFloat = Space.value_8
        }
    }
    
    enum UIComponentScreen {
        
        enum NavigationMenu {
            
            static let marginLeft_16: CGFloat = Margin.left_16
            static let marginRight_16: CGFloat = Margin.right_16
        }
    }
}
