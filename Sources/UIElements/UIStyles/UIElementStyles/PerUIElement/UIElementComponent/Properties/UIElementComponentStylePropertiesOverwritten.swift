//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStylePropertiesOverwritten: UIElementStylePropertiesOverwritten {
    
    associatedtype UIElementComponentStylePropertiesLookType: UIElementComponentStylePropertiesLook
    associatedtype UIElementComponentStylePropertiesLookParamsType: UIElementComponentStylePropertiesLookParams
    associatedtype UIElementComponentStylePropertiesLayoutParamsType: UIElementComponentStylePropertiesLayoutParams
    
    var look: UIElementComponentStylePropertiesLookType? { get }
    var lookParams: UIElementComponentStylePropertiesLookParamsType? { get }
    var layoutParams: UIElementComponentStylePropertiesLayoutParamsType? { get }
    
    init(look: UIElementComponentStylePropertiesLookType?, lookParams: UIElementComponentStylePropertiesLookParamsType?, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?)
}
