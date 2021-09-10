//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public enum DevBootstrapUIElementComponentColorPalette:
    DevUIElementComponentColorPaletteInterface {
    
    fileprivate enum All {
        
        static let black_1c1f23: UIColor = .uie.`init`(
            hex: "#1c1f23"
        )
        static let black_1d2024: UIColor = .uie.`init`(
            hex: "#1d2024"
        )
        static let black_202428: UIColor = .uie.`init`(
            hex: "#202428"
        )
        static let black_212529: UIColor = .uie.`init`(
            hex: "#212529"
        )
        static let white: UIColor = .white
        
        static let blue1_0babcb: UIColor = .uie.`init`(
            hex: "#0babcb"
        )
        static let blue1_0bb1d2: UIColor = .uie.`init`(
            hex: "#0bb1d2"
        )
        static let blue1_0dc4e8: UIColor = .uie.`init`(
            hex: "#0dc4e8"
        )
        static let blue1_0dcaf0: UIColor = .uie.`init`(
            hex: "#0dcaf0"
        )
        static let blue2_0b5ed6: UIColor = .uie.`init`(
            hex: "#0b5ed6"
        )
        static let blue2_0b60dd: UIColor = .uie.`init`(
            hex: "#0b60dd"
        )
        static let blue2_0d6bf5: UIColor = .uie.`init`(
            hex: "#0d6bf5"
        )
        static let blue2_0d6efd: UIColor = .uie.`init`(
            hex: "#0d6efd"
        )
        static let gray1_5c636a: UIColor = .uie.`init`(
            hex: "#5c636a"
        )
        static let gray1_5e666d: UIColor = .uie.`init`(
            hex: "#5e666d"
        )
        static let gray1_697179: UIColor = .uie.`init`(
            hex: "#697179"
        )
        static let gray1_6c757d: UIColor = .uie.`init`(
            hex: "#6c757d"
        )
        static let gray2_d2d3d4: UIColor = .uie.`init`(
            hex: "#d2d3d4"
        )
        static let gray2_d9dadb: UIColor = .uie.`init`(
            hex: "#d9dadb"
        )
        static let gray2_f0f1f2: UIColor = .uie.`init`(
            hex: "#f0f1f2"
        )
        static let gray2_f8f9fa: UIColor = .uie.`init`(
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
        static let red_ba2d3b: UIColor = .uie.`init`(
            hex: "#ba2d3b"
        )
        static let red_c02e3c: UIColor = .uie.`init`(
            hex: "#c02e3c"
        )
        static let red_d53343: UIColor = .uie.`init`(
            hex: "#d53343"
        )
        static let red_dc3545: UIColor = .uie.`init`(
            hex: "#dc3545"
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
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {
        
        fileprivate typealias UIElementComponentPalette =
            UIElementComponent
        
        fileprivate enum Property {
            
            enum Background {
                
                static let black_202428: UIColor = All.black_202428
                static let black_212529: UIColor = All.black_212529
                static let blue1_0dc4e8: UIColor = All.blue1_0dc4e8
                static let blue1_0dcaf0: UIColor = All.blue1_0dcaf0
                static let blue2_0d6bf5: UIColor = All.blue2_0d6bf5
                static let blue2_0d6efd: UIColor = All.blue2_0d6efd
                static let gray1_697179: UIColor = All.gray1_697179
                static let gray1_6c757d: UIColor = All.gray1_6c757d
                static let gray2_f0f1f2: UIColor = All.gray2_f0f1f2
                static let gray2_f8f9fa: UIColor = All.gray2_f8f9fa
                static let green_188351: UIColor = All.green_188351
                static let green_198754: UIColor = All.green_198754
                static let red_d53343: UIColor = All.red_d53343
                static let red_dc3545: UIColor = All.red_dc3545
                static let yellow_f0f1f2: UIColor = All.yellow_f7bb07
                static let yellow_f8f9fa: UIColor = All.yellow_ffc107
            }
            
            enum Border {
                
                static let black_1c1f23: UIColor = All.black_1c1f23
                static let black_1d2024: UIColor = All.black_1d2024
                static let blue1_0babcb: UIColor = All.blue1_0babcb
                static let blue1_0bb1d2: UIColor = All.blue1_0bb1d2
                static let blue2_0b5ed6: UIColor = All.blue2_0b5ed6
                static let blue2_0b60dd: UIColor = All.blue2_0b60dd
                static let gray1_5c636a: UIColor = All.gray1_5c636a
                static let gray1_5e666d: UIColor = All.gray1_5e666d
                static let gray2_d2d3d4: UIColor = All.gray2_d2d3d4
                static let gray2_d9dadb: UIColor = All.gray2_d9dadb
                static let green_157347: UIColor = All.green_157347
                static let green_167649: UIColor = All.green_167649
                static let red_ba2d3b: UIColor = All.red_ba2d3b
                static let red_c02e3c: UIColor = All.red_c02e3c
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

extension DevBootstrapUIElementComponentColorPalette.UIElementComponent {
        
    public enum UIComponent:
        UIElementComponentColorPalette,
        DevUIPalette {
        
        enum Label {
            
            static let text_black_212529: UIColor = Property.Text.black_212529
        }
    }
    
    public enum UIComponentSet:
        UIElementComponentColorPalette,
        DevUIPalette {}
    
    public enum UIComponentGroup:
        UIElementComponentColorPalette,
        DevUIPalette {
        
        enum Card {
            
            enum Primary:
                CardUIComponentGroupColorPalette {
                
                static let titleBackground: UIColor = Property.Background.blue1_0dc4e8
                static let titleText: UIColor = Property.Text.white
                static let bodyBackground: UIColor = Property.Background.blue1_0dcaf0
                static let border: UIColor = Property.Border.blue1_0bb1d2
                static let separator: UIColor = Property.Border.blue1_0babcb
            }
            
            enum Secondary:
                CardUIComponentGroupColorPalette {
                
                static let titleBackground: UIColor = Property.Background.gray1_697179
                static let titleText: UIColor = Property.Text.white
                static let bodyBackground: UIColor = Property.Background.gray1_6c757d
                static let border: UIColor = Property.Border.gray1_5e666d
                static let separator: UIColor = Property.Border.gray1_5c636a
            }
            
            enum Success:
                CardUIComponentGroupColorPalette {
                
                static let titleBackground: UIColor = Property.Background.green_188351
                static let titleText: UIColor = Property.Text.white
                static let bodyBackground: UIColor = Property.Background.green_198754
                static let border: UIColor = Property.Border.green_167649
                static let separator: UIColor = Property.Border.green_157347
            }
            
            enum Danger:
                CardUIComponentGroupColorPalette {
                
                static let titleBackground: UIColor = Property.Background.red_d53343
                static let titleText: UIColor = Property.Text.white
                static let bodyBackground: UIColor = Property.Background.red_dc3545
                static let border: UIColor = Property.Border.red_c02e3c
                static let separator: UIColor = Property.Border.red_ba2d3b
            }
            
            enum Warning:
                CardUIComponentGroupColorPalette {
                
                static let titleBackground: UIColor = Property.Background.yellow_f0f1f2
                static let titleText: UIColor = Property.Text.black_212529
                static let bodyBackground: UIColor = Property.Background.yellow_f8f9fa
                static let border: UIColor = Property.Border.yellow_dfa906
                static let separator: UIColor = Property.Border.yellow_d8a406
            }
            
            enum Info:
                CardUIComponentGroupColorPalette {
                
                static let titleBackground: UIColor = Property.Background.blue2_0d6bf5
                static let titleText: UIColor = Property.Text.black_212529
                static let bodyBackground: UIColor = Property.Background.blue2_0d6efd
                static let border: UIColor = Property.Border.blue2_0b60dd
                static let separator: UIColor = Property.Border.blue2_0b5ed6
            }
            
            enum Light:
                CardUIComponentGroupColorPalette {
                
                static let titleBackground: UIColor = Property.Background.gray2_f0f1f2
                static let titleText: UIColor = Property.Text.black_212529
                static let bodyBackground: UIColor = Property.Background.gray2_f8f9fa
                static let border: UIColor = Property.Border.gray2_d9dadb
                static let separator: UIColor = Property.Border.gray2_d2d3d4
            }
            
            enum Dark:
                CardUIComponentGroupColorPalette {
                
                static let titleBackground: UIColor = Property.Background.black_202428
                static let titleText: UIColor = Property.Text.white
                static let bodyBackground: UIColor = Property.Background.black_212529
                static let border: UIColor = Property.Border.black_1d2024
                static let separator: UIColor = Property.Border.black_1c1f23
            }
        }
    }
    
    public enum UIComponentScreen:
        UIElementComponentColorPalette,
        DevUIPalette {}
}
