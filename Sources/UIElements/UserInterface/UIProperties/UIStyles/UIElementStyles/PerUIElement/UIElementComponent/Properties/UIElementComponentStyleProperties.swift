//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStyleProperties: UIElementStyleProperties {
    
    associatedtype OSUIElementComponentStylePropertiesLookType: OSUIElementComponentStylePropertiesLook
    associatedtype UIElementComponentStylePropertiesLookType: UIElementComponentStylePropertiesLook
    associatedtype UIElementComponentStylePropertiesLookParamsType: UIElementComponentStylePropertiesLookParams
    associatedtype UIElementComponentStylePropertiesLayoutParamsType: UIElementComponentStylePropertiesLayoutParams
    
    var lookSort: UIElementComponentStylePropertiesLookSort<OSUIElementComponentStylePropertiesLookType, UIElementComponentStylePropertiesLookType> { get }
    var lookParams: UIElementComponentStylePropertiesLookParamsType? { get }
    var layoutParams: UIElementComponentStylePropertiesLayoutParamsType? { get }
    
    init(lookSort: UIElementComponentStylePropertiesLookSort<OSUIElementComponentStylePropertiesLookType, UIElementComponentStylePropertiesLookType>, lookParams: UIElementComponentStylePropertiesLookParamsType?, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?)
}

extension UIElementComponentStyleProperties {
    
    static func `default`(styleType: UIStyleType) -> Self {
        var layoutParams: UIElementComponentStylePropertiesLayoutParamsType? = nil
        if case let .os(styleProperties) = styleType, styleProperties.isPreferredLayoutParams {
            layoutParams = .preferred
        }
        
        return .init(
            lookSort: .os,
            lookParams: .default,
            layoutParams: layoutParams
        )
    }
}
