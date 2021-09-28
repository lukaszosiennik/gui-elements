//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIElementComponentStyleProperties:
    GUIElementStyleProperties,
    GUIPropertyDefaultValueBasedOnInputInterface {
    
    associatedtype GUIElementComponentStylePropertiesLookInterfaceType:
        GUIElementComponentStylePropertiesLook
    associatedtype GUIElementComponentStylePropertiesLookParamsType:
        GUIElementComponentStylePropertiesLookParams
    associatedtype GUIElementComponentStylePropertiesLayoutParamsType:
        GUIElementComponentStylePropertiesLayoutParams
    
    var lookType: GUIElementComponentStylePropertiesLookType<
        GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
        GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
    > {
        get
    }
    var lookParams: GUIElementComponentStylePropertiesLookParamsType? {
        get
    }
    var layoutParams: GUIElementComponentStylePropertiesLayoutParamsType? {
        get
    }
    
    init(
        lookType: GUIElementComponentStylePropertiesLookType<
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
        >,
        lookParams: GUIElementComponentStylePropertiesLookParamsType?,
        layoutParams: GUIElementComponentStylePropertiesLayoutParamsType?
    )
}

extension GUIElementComponentStyleProperties {
    
    public static func `default`(
        styleType: GUIStyleType
    ) -> Self {
        var layoutParams: GUIElementComponentStylePropertiesLayoutParamsType? = nil
        if case let .os(styleProperties) = styleType, styleProperties.isLayoutParamsPreferred {
            layoutParams = .preferred
        }
        
        return .init(
            lookType: .os(.default),
            lookParams: .default,
            layoutParams: layoutParams
        )
    }
}
