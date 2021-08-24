//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

enum DevUIColorPalette: UIColorPalette {
    
    fileprivate enum All {
        
        static let clear: UIColor = .clear
        static let black: UIColor = .black
        static let white: UIColor = .white
        static let green: UIColor = .green
    }
    
    enum UIElementComponent {
        
        fileprivate typealias UIElementComponentPalette = UIElementComponent
        
        fileprivate enum Property {
            
            enum Background {
                
                static let clear: UIColor = All.clear
                static let white: UIColor = All.white
                static let green: UIColor = All.green
            }
            
            enum Border {
                
                static let black: UIColor = All.black
            }
        
            enum Text {
                
                static let black: UIColor = All.black
            }
        }
    }
}

extension DevUIColorPalette.UIElementComponent {
        
    enum UIComponent {
        
        enum Placeholder {
            
            static let background_green: UIColor = Property.Background.green
        }
    }
    
    enum UIComponentSet {
        
        enum NavigationMenuOption {
            
            static let background_clear: UIColor = Property.Background.clear
            static let background_white: UIColor = Property.Background.white
            static let border_black: UIColor = Property.Border.black
        }
    }
    
    enum UIComponentGroup {
        
        enum NavigationMenu {
            
            static let background_clear: UIColor = Property.Background.clear
            static let background_white: UIColor = Property.Background.white
        }
    }
    
    enum UIComponentScreen {
        
        fileprivate enum Property {
            
            enum Background {
                
                static let white: UIColor = UIElementComponentPalette.Property.Background.white
            }
        }
        
        enum Information {
            
            static let background_white: UIColor = Property.Background.white
        }
        
        enum NavigationMenuOption {
            
            static let background_white: UIColor = Property.Background.white
        }
    }
}