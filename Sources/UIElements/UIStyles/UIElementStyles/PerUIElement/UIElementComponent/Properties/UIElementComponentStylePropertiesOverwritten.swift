//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStylePropertiesOverwritten: UIElementStylePropertiesOverwritten {
    
    associatedtype UIElementComponentStylePropertiesLookType: UIElementComponentStylePropertiesLook
    associatedtype UIElementComponentStylePropertiesLayoutParamsType: UIElementComponentStylePropertiesLayoutParams
    
    var look: UIElementComponentStylePropertiesLookType? { get set }
    var layoutParams: UIElementComponentStylePropertiesLayoutParamsType? { get set }
    
    init(look: UIElementComponentStylePropertiesLookType?, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?)
}
