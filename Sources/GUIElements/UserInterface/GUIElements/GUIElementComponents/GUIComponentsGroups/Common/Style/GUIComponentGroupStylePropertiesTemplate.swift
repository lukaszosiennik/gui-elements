//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct GUIComponentGroupStylePropertiesTemplate<
    GUIElementComponentStylePropertiesLookInterfaceType:
        GUIComponentGroupStylePropertiesLookInterface,
    GUIComponentGroupStylePropertiesLookParamsType:
        GUIComponentGroupStylePropertiesLookParams,
    GUIComponentGroupStylePropertiesLayoutParamsType:
        GUIComponentGroupStylePropertiesLayoutParams
>:
    GUIComponentGroupStyleProperties {

    public let lookType: GUIElementComponentStylePropertiesLookType<
        GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
        GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
    >
    public let lookParams: GUIComponentGroupStylePropertiesLookParamsType?
    public let layoutParams: GUIComponentGroupStylePropertiesLayoutParamsType?
    
    public init(
        lookType: GUIElementComponentStylePropertiesLookType<
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
        >,
        lookParams: GUIComponentGroupStylePropertiesLookParamsType?,
        layoutParams: GUIComponentGroupStylePropertiesLayoutParamsType?
    ) {
        self.lookType = lookType
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
