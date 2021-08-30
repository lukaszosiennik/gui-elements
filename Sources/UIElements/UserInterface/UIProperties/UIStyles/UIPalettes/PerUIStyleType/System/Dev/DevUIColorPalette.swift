//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

enum DevUIColorPalette:
    SystemUIPalette,
    UIColorPalette {
    
    fileprivate enum All {
        
        static let clear: UIColor = .clear
        static let black: UIColor = .black
        static let white: UIColor = .white
        static let blue: UIColor = .blue
        static let green: UIColor = .green
        static let red: UIColor = .red
    }
    
    enum UIElementComponent {
        
        fileprivate typealias UIElementComponentPalette = UIElementComponent
        
        fileprivate enum Property {
            
            enum Background {
                
                static let clear: UIColor = All.clear
                static let white: UIColor = All.white
            }
            
            enum Border {
                
                static let black: UIColor = All.black
            }
        
            enum Text {
                
                static let blue: UIColor = All.blue
                static let green: UIColor = All.green
                static let red: UIColor = All.red
            }
        }
    }
}

extension DevUIColorPalette.UIElementComponent {
        
    enum UIComponent {
        
        enum Button {
            
            static let text_normal_green: UIColor = Property.Text.green
            static let text_highlighted_red: UIColor = Property.Text.red
        }
        
        enum Label {
            
            static let text_blue: UIColor = Property.Text.blue
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
