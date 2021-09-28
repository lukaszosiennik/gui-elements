//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct GUIComponentStylePropertiesTemplate<
    GUIElementComponentStylePropertiesLookInterfaceType:
        GUIComponentStylePropertiesLook,
    GUIComponentStylePropertiesLookParamsType:
        GUIComponentStylePropertiesLookParams,
    GUIComponentStylePropertiesLayoutParamsType:
        GUIComponentStylePropertiesLayoutParams
>:
    GUIComponentStyleProperties {

    public let lookType: GUIElementComponentStylePropertiesLookType<
        GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
        GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
    >
    public let lookParams: GUIComponentStylePropertiesLookParamsType?
    public let layoutParams: GUIComponentStylePropertiesLayoutParamsType?
    
    public init(
        lookType: GUIElementComponentStylePropertiesLookType<
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
        >,
        lookParams: GUIComponentStylePropertiesLookParamsType?,
        layoutParams: GUIComponentStylePropertiesLayoutParamsType?
    ) {
        self.lookType = lookType
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
