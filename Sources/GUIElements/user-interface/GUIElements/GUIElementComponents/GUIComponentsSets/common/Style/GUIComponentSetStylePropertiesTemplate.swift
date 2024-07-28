//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct GUIComponentSetStylePropertiesTemplate<
    Look:
        GUIComponentSetStylePropertiesLook,
    LookParams:
        GUIComponentSetStylePropertiesLookParams,
    LayoutParams:
        GUIComponentSetStylePropertiesLayoutParams
>:
    GUIComponentSetStyleProperties {

    public let lookType: GUIElementComponentStylePropertiesLookType<
        Look.OSLook,
        Look.SystemLook
    >
    public let lookParams: LookParams?
    public let layoutParams: LayoutParams?
    
    public init(
        lookType: GUIElementComponentStylePropertiesLookType<
            Look.OSLook,
            Look.SystemLook
        >,
        lookParams: LookParams?,
        layoutParams: LayoutParams?
    ) {
        self.lookType = lookType
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
