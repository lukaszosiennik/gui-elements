//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStylePropertiesOverwritten: UIElementStyleProperties {
    
    associatedtype UIElementComponentStylePropertiesOverwrittenLookType: UIElementComponentStylePropertiesOverwrittenLook
    associatedtype UIElementComponentStylePropertiesOverwrittenLookParamsType: UIElementComponentStylePropertiesOverwrittenLookParams
    associatedtype UIElementComponentStylePropertiesOverwrittenLayoutParamsType: UIElementComponentStylePropertiesLayoutParams
    
    var look: UIElementComponentStylePropertiesOverwrittenLookType? { get }
    var lookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType? { get }
    var layoutParams: UIElementComponentStylePropertiesOverwrittenLayoutParamsType? { get }
    
    init(look: UIElementComponentStylePropertiesOverwrittenLookType?, lookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType?, layoutParams: UIElementComponentStylePropertiesOverwrittenLayoutParamsType?)
}
