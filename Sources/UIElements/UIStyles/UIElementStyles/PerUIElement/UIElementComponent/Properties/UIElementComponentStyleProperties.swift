//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIElementComponentStyleProperties: UIElementStyleProperties {
    
    associatedtype UIElementComponentStylePropertiesLookType: UIElementComponentStylePropertiesLook
    associatedtype UIElementComponentStylePropertiesLayoutParamsType: UIElementComponentStylePropertiesLayoutParams
    
    var look: UIElementComponentStylePropertiesLookType { get set }
    var layoutParams: UIElementComponentStylePropertiesLayoutParamsType { get set }
    
    init(look: UIElementComponentStylePropertiesLookType, layoutParams: UIElementComponentStylePropertiesLayoutParamsType)
}
