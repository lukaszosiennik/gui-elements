//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public protocol GUIElementComponentStyleProperties:
    GUIElementStyleProperties,
    GUIPropertyDefaultValueBasedOnInputInterface {
    
    associatedtype Look:
        GUIElementComponentStylePropertiesLook
    associatedtype LookParams:
        GUIElementComponentStylePropertiesLookParams
    associatedtype LayoutParams:
        GUIElementComponentStylePropertiesLayoutParams
    
    var lookType: GUIElementComponentStylePropertiesLookType<
        Look.OSLook,
        Look.SystemLook
    > {
        get
    }
    var lookParams: LookParams? {
        get
    }
    var layoutParams: LayoutParams? {
        get
    }
    
    init(
        lookType: GUIElementComponentStylePropertiesLookType<
            Look.OSLook,
            Look.SystemLook
        >,
        lookParams: LookParams?,
        layoutParams: LayoutParams?
    )
}

extension GUIElementComponentStyleProperties {
    
    public static func `default`(
        styleType: GUIStyleType
    ) -> Self {
        var layoutParams: LayoutParams? = nil
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
