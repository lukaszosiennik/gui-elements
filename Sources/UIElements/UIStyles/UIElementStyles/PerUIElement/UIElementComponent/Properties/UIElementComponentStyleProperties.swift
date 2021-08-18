//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStyleProperties: UIElementStyleProperties {
    
    associatedtype UIElementComponentStylePropertiesLookType: UIElementComponentStylePropertiesLook
    associatedtype UIElementComponentStylePropertiesLookParamsType: UIElementComponentStylePropertiesLookParams
    associatedtype UIElementComponentStylePropertiesLayoutParamsType: UIElementComponentStylePropertiesLayoutParams
    
    var look: UIElementComponentStylePropertiesLookType? { get }
    var lookParams: UIElementComponentStylePropertiesLookParamsType? { get }
    var layoutParams: UIElementComponentStylePropertiesLayoutParamsType? { get }
    
    init(look: UIElementComponentStylePropertiesLookType?, lookParams: UIElementComponentStylePropertiesLookParamsType?, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?)
}

extension UIElementComponentStyleProperties {
    
    static var `default`: Self? {
        guard let defaultLookParams: UIElementComponentStylePropertiesLookParamsType = .default else {
            return nil
        }
        
        return .init(
            look: nil,
            lookParams: defaultLookParams,
            layoutParams: nil
        )
    }
}
