//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStyleProperties: UIElementStyleProperties {
    
    associatedtype UIElementComponentStylePropertiesOSLookType: UIElementComponentStylePropertiesOSLook
    associatedtype UIElementComponentStylePropertiesSystemLookType: UIElementComponentStylePropertiesSystemLook
    associatedtype UIElementComponentStylePropertiesLookParamsType: UIElementComponentStylePropertiesLookParams
    associatedtype UIElementComponentStylePropertiesLayoutParamsType: UIElementComponentStylePropertiesLayoutParams
    
    var lookType: UIElementComponentStylePropertiesLookType<UIElementComponentStylePropertiesOSLookType, UIElementComponentStylePropertiesSystemLookType> { get }
    var lookParams: UIElementComponentStylePropertiesLookParamsType? { get }
    var layoutParams: UIElementComponentStylePropertiesLayoutParamsType? { get }
    
    init(
        lookType: UIElementComponentStylePropertiesLookType<UIElementComponentStylePropertiesOSLookType, UIElementComponentStylePropertiesSystemLookType>,
        lookParams: UIElementComponentStylePropertiesLookParamsType?,
        layoutParams: UIElementComponentStylePropertiesLayoutParamsType?
    )
}

extension UIElementComponentStyleProperties {
    
    static func `default`(styleType: UIStyleType) -> Self {
        var layoutParams: UIElementComponentStylePropertiesLayoutParamsType? = nil
        if case let .os(styleProperties) = styleType, styleProperties.isLayoutParamsPreferred {
            layoutParams = .preferred
        }
        
        return .init(
            lookType: .os(.init()),
            lookParams: .default,
            layoutParams: layoutParams
        )
    }
}
