//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public enum DevSoftwareEngineerUIElementComponentColorPalette:
    DevUIElementComponentColorPaletteInterface {
    
    fileprivate enum All {
        
        static let clear: UIColor = .clear
        
        static let black: UIColor = .black
        static let white: UIColor = .white
        
        static let blue: UIColor = .blue
        static let green: UIColor = .green
        static let red: UIColor = .red
    }
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {
        
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

extension DevSoftwareEngineerUIElementComponentColorPalette.UIElementComponent {
        
    public enum UIComponent:
        UIElementComponentColorPalette,
        DevUIPalette {
        
        enum Button {
            
            static let text_normal_green: UIColor = Property.Text.green
            static let text_highlighted_red: UIColor = Property.Text.red
        }
        
        enum Label {
            
            static let text_blue: UIColor = Property.Text.blue
        }
    }
    
    public enum UIComponentSet:
        UIElementComponentColorPalette,
        DevUIPalette {
        
        enum NavigationMenuOption {
            
            static let background_clear: UIColor = Property.Background.clear
            static let background_white: UIColor = Property.Background.white
            static let border_black: UIColor = Property.Border.black
        }
    }
    
    public enum UIComponentGroup:
        UIElementComponentColorPalette,
        DevUIPalette {
        
        enum Card:
            CardUIComponentGroupColorPalette {
            
            static let titleBackground: UIColor = DevBootstrapUIElementComponentColorPalette.UIElementComponent.UIComponentGroup.Card.Light.titleBackground
            static let titleText: UIColor = DevBootstrapUIElementComponentColorPalette.UIElementComponent.UIComponentGroup.Card.Light.titleText
            static let bodyBackground: UIColor = DevBootstrapUIElementComponentColorPalette.UIElementComponent.UIComponentGroup.Card.Light.bodyBackground
            static let border: UIColor = DevBootstrapUIElementComponentColorPalette.UIElementComponent.UIComponentGroup.Card.Light.border
            static let separator: UIColor = DevBootstrapUIElementComponentColorPalette.UIElementComponent.UIComponentGroup.Card.Light.separator
        }
        
        enum NavigationMenu {
            
            static let background_clear: UIColor = Property.Background.clear
            static let background_white: UIColor = Property.Background.white
        }
    }
    
    public enum UIComponentScreen:
        UIElementComponentColorPalette,
        DevUIPalette {
        
        fileprivate enum Property {
            
            enum Background {
                
                static let white: UIColor = UIElementComponentPalette.Property.Background.white
            }
        }
        
        enum Information {
            
            static let background_white: UIColor = Property.Background.white
        }
        
        enum NavigationMenu {
            
            static let background_white: UIColor = Property.Background.white
        }
    }
}
