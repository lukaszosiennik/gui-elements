//
//  Created by Łukasz Osiennik on 18/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

typealias DefaultUIComponentGroupConstantPalette = DefaultUIElementComponentConstantPalette.UIElementComponent.UIComponentGroup
typealias DefaultUIComponentScreenConstantPalette = DefaultUIElementComponentConstantPalette.UIElementComponent.UIComponentScreen

enum DefaultUIElementComponentConstantPalette: UIElementComponentConstantPalette {
    
    enum All {
        
        static let value_0: CGFloat = 0
    }
    
    enum UIElementComponent {
        
        fileprivate typealias UILookParamsPalette = UILookParams
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
    }
}

extension DefaultUIElementComponentConstantPalette.UIElementComponent {
    
    enum UIComponentGroup {
        
        enum NavigationMenu {
            
            enum UILookParams {
                
                static let title_linesNumber_0: Int = Int(UILookParamsPalette.Property.Size.Vertical.LinesNumber.value_0)
            }
        }
    }
    
    enum UIComponentScreen {
        
        enum Information {
            
            enum UILookParams {
                
                static let title_linesNumber_0: Int = Int(UILookParamsPalette.Property.Size.Vertical.LinesNumber.value_0)
            }
        }
    }
}
