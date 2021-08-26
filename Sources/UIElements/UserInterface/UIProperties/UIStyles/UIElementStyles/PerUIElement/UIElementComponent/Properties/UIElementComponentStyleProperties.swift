//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStyleProperties: UIElementStyleProperties {
    
    associatedtype UIElementComponentStylePropertiesOSLookType: UIElementComponentStylePropertiesOSLook
    associatedtype UIElementComponentStylePropertiesLookType: UIElementComponentStylePropertiesLook
    associatedtype UIElementComponentStylePropertiesLookParamsType: UIElementComponentStylePropertiesLookParams
    associatedtype UIElementComponentStylePropertiesLayoutParamsType: UIElementComponentStylePropertiesLayoutParams
    
    var lookSort: UIElementComponentStylePropertiesLookSort<UIElementComponentStylePropertiesOSLookType, UIElementComponentStylePropertiesLookType> { get }
    var lookParams: UIElementComponentStylePropertiesLookParamsType? { get }
    var layoutParams: UIElementComponentStylePropertiesLayoutParamsType? { get }
    
    init(lookSort: UIElementComponentStylePropertiesLookSort<UIElementComponentStylePropertiesOSLookType, UIElementComponentStylePropertiesLookType>, lookParams: UIElementComponentStylePropertiesLookParamsType?, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?)
}

extension UIElementComponentStyleProperties {
    
    static func `default`(styleType: UIStyleType) -> Self {
        var layoutParams: UIElementComponentStylePropertiesLayoutParamsType? = nil
        if case let .os(styleProperties) = styleType, styleProperties.isLayoutParamsPreferred {
            layoutParams = .preferred
        }
        
        return .init(
            lookSort: .os(.init()),
            lookParams: .default,
            layoutParams: layoutParams
        )
    }
}
