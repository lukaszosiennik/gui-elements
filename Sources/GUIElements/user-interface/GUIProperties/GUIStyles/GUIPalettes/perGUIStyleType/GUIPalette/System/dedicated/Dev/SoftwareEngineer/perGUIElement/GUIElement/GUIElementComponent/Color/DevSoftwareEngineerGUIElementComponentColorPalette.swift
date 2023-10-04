//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public enum DevSoftwareEngineerGUIElementComponentColorPalette:
    DevGUIElementComponentColorPaletteInterface {
    
    fileprivate enum All {
        
        static let clear: UIColor = .clear
        
        static let black: UIColor = .black
        static let white: UIColor = .white
        
        static let blue: UIColor = .blue
        static let green: UIColor = .green
        static let red: UIColor = .red
    }
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {
        
        fileprivate typealias GUIElementComponentPalette =
            GUIElementComponent
        
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

extension DevSoftwareEngineerGUIElementComponentColorPalette.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentColorPaletteInterface,
        DevGUIPaletteInterface {
        
        enum Button {
            
            static let text_normal_green: UIColor = Property.Text.green
            static let text_highlighted_red: UIColor = Property.Text.red
        }
        
        enum Label {
            
            static let text_blue: UIColor = Property.Text.blue
        }
    }
    
    public enum GUIComponentSet:
        GUIElementComponentColorPaletteInterface,
        DevGUIPaletteInterface {
        
        enum NavigationMenuOption {
            
            static let background_clear: UIColor = Property.Background.clear
            static let background_white: UIColor = Property.Background.white
            static let border_black: UIColor = Property.Border.black
        }
    }
    
    public enum GUIComponentGroup:
        GUIElementComponentColorPaletteInterface,
        DevGUIPaletteInterface {
        
        enum Card:
            CardGUIComponentGroupColorPaletteInterface {
            
            static let titleBackground: UIColor = DevBootstrapGUIElementComponentColorPalette.GUIElementComponent.GUIComponentGroup.Card.Light.titleBackground
            static let titleText: UIColor = DevBootstrapGUIElementComponentColorPalette.GUIElementComponent.GUIComponentGroup.Card.Light.titleText
            static let bodyBackground: UIColor = DevBootstrapGUIElementComponentColorPalette.GUIElementComponent.GUIComponentGroup.Card.Light.bodyBackground
            static let border: UIColor = DevBootstrapGUIElementComponentColorPalette.GUIElementComponent.GUIComponentGroup.Card.Light.border
            static let separator: UIColor = DevBootstrapGUIElementComponentColorPalette.GUIElementComponent.GUIComponentGroup.Card.Light.separator
        }
        
        enum NavigationMenu {
            
            static let background_clear: UIColor = Property.Background.clear
            static let background_white: UIColor = Property.Background.white
        }
    }
    
    public enum GUIComponentScreen:
        GUIElementComponentColorPaletteInterface,
        DevGUIPaletteInterface {
        
        fileprivate enum Property {
            
            enum Background {
                
                static let white: UIColor = GUIElementComponentPalette.Property.Background.white
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
