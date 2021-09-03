//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public enum DevBootstrapUIColorPalette {
    
    fileprivate enum All {
        
        static let black_212529: UIColor = .uie.`init`(
            hex: "#212529"
        )
        static let white: UIColor = .white
        
        static let gray_d2d3d4: UIColor = .uie.`init`(
            hex: "#d2d3d4"
        )
        static let gray_d9dadb: UIColor = .uie.`init`(
            hex: "#d9dadb"
        )
        static let gray_f0f1f2: UIColor = .uie.`init`(
            hex: "#f0f1f2"
        )
        static let gray_f8f9fa: UIColor = .uie.`init`(
            hex: "#f8f9fa"
        )
        static let green_157347: UIColor = .uie.`init`(
            hex: "#157347"
        )
        static let green_167649: UIColor = .uie.`init`(
            hex: "#167649"
        )
        static let green_188351: UIColor = .uie.`init`(
            hex: "#188351"
        )
        static let green_198754: UIColor = .uie.`init`(
            hex: "#198754"
        )        
        static let yellow_d8a406: UIColor = .uie.`init`(
            hex: "#d8a406"
        )
        static let yellow_dfa906: UIColor = .uie.`init`(
            hex: "#dfa906"
        )
        static let yellow_f7bb07: UIColor = .uie.`init`(
            hex: "#f7bb07"
        )
        static let yellow_ffc107: UIColor = .uie.`init`(
            hex: "#ffc107"
        )
    }
    
    public enum UIElementComponent {
        
        fileprivate typealias UIElementComponentPalette = UIElementComponent
        
        fileprivate enum Property {
            
            enum Background {
                
                static let gray_f0f1f2: UIColor = All.gray_f0f1f2
                static let gray_f8f9fa: UIColor = All.gray_f8f9fa
                static let green_188351: UIColor = All.green_188351
                static let green_198754: UIColor = All.green_198754
                static let yellow_f0f1f2: UIColor = All.yellow_f7bb07
                static let yellow_f8f9fa: UIColor = All.yellow_ffc107
            }
            
            enum Border {
                
                static let gray_d2d3d4: UIColor = All.gray_d2d3d4
                static let gray_d9dadb: UIColor = All.gray_d9dadb
                static let green_157347: UIColor = All.green_157347
                static let green_167649: UIColor = All.green_167649
                static let yellow_d8a406: UIColor = All.yellow_d8a406
                static let yellow_dfa906: UIColor = All.yellow_dfa906
            }
        
            enum Text {
                
                static let black_212529: UIColor = All.black_212529
                static let white: UIColor = All.white
            }
        }
    }
}

extension DevBootstrapUIColorPalette.UIElementComponent {
        
    public enum UIComponent:
        DevBootstrapUIPalette,
        UIColorPalette {}
    
    public enum UIComponentSet:
        DevBootstrapUIPalette,
        UIColorPalette {}
    
    public enum UIComponentGroup:
        DevBootstrapUIPalette,
        UIColorPalette {
        
        enum Card {
            
            enum Primary {}
            
            enum Secondary {}
            
            enum Success {
                
                static let background_green_f0f1f2: UIColor = Property.Background.green_188351
                static let background_green_f8f9fa: UIColor = Property.Background.green_198754
                static let border_green_157347: UIColor = Property.Border.green_157347
                static let border_green_167649: UIColor = Property.Border.green_167649
                static let text_white: UIColor = Property.Text.white
            }
            
            enum Danger {}
            
            enum Warning {
                
                static let background_yellow_f0f1f2: UIColor = Property.Background.yellow_f0f1f2
                static let background_yellow_f8f9fa: UIColor = Property.Background.yellow_f8f9fa
                static let border_yellow_d8a406: UIColor = Property.Border.yellow_d8a406
                static let border_yellow_dfa906: UIColor = Property.Border.yellow_dfa906
                static let text_black_212529: UIColor = Property.Text.black_212529
            }
            
            enum Info {}
            
            enum Light {
                
                static let background_gray_f0f1f2: UIColor = Property.Background.gray_f0f1f2
                static let background_gray_f8f9fa: UIColor = Property.Background.gray_f8f9fa
                static let border_gray_d2d3d4: UIColor = Property.Border.gray_d2d3d4
                static let border_gray_d9dadb: UIColor = Property.Border.gray_d9dadb
                static let text_black_212529: UIColor = Property.Text.black_212529
            }
            
            enum Dark {}
        }
    }
    
    public enum UIComponentScreen:
        DevBootstrapUIPalette,
        UIColorPalette {}
}
