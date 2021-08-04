//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

enum DevUIElementComponentConstantPalette: UIElementComponentConstantPalette {
    
    fileprivate enum All {
        
        static let value_1: CGFloat = 1
    }
    
    enum UIElementComponent {
        
        fileprivate enum Property {
        
            enum FontSize {}
            
            enum BorderWidth {
                
                static let value_1: CGFloat = All.value_1
            }
            
            enum BorderRadius {}
        }
    }
    
    enum UILayout {
            
        enum Margin {}
    }
}

extension DevUIElementComponentConstantPalette.UIElementComponent {
        
    enum UIComponent {}
    
    enum UIComponentSet {
        
        enum SelectionListOption {
            
            static let borderWidth_1: CGFloat = Property.BorderWidth.value_1
        }
    }
    
    enum UIComponentGroup {}
    
    enum UIComponentScreen {}
}
