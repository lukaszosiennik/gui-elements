//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct GUIComponentSetStylePropertiesTemplate<
    GUIElementComponentStylePropertiesLookInterfaceType:
        GUIComponentSetStylePropertiesLook,
    GUIComponentSetStylePropertiesLookParamsType:
        GUIComponentSetStylePropertiesLookParams,
    GUIComponentSetStylePropertiesLayoutParamsType:
        GUIComponentSetStylePropertiesLayoutParams
>:
    GUIComponentSetStyleProperties {

    public let lookType: GUIElementComponentStylePropertiesLookType<
        GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
        GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
    >
    public let lookParams: GUIComponentSetStylePropertiesLookParamsType?
    public let layoutParams: GUIComponentSetStylePropertiesLayoutParamsType?
    
    public init(
        lookType: GUIElementComponentStylePropertiesLookType<
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
        >,
        lookParams: GUIComponentSetStylePropertiesLookParamsType?,
        layoutParams: GUIComponentSetStylePropertiesLayoutParamsType?
    ) {
        self.lookType = lookType
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
