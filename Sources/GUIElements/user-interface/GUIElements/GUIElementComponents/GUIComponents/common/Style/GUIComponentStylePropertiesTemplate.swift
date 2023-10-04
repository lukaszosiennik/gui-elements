//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct GUIComponentStylePropertiesTemplate<
    Look:
        GUIComponentStylePropertiesLook,
    LookParams:
        GUIComponentStylePropertiesLookParams,
    LayoutParams:
        GUIComponentStylePropertiesLayoutParams
>:
    GUIComponentStyleProperties {

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
