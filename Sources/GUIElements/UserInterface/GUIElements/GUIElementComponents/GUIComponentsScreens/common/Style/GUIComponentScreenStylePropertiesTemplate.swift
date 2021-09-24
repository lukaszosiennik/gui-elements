//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct GUIComponentScreenStylePropertiesTemplate<
    GUIElementComponentStylePropertiesLookInterfaceType:
        GUIComponentScreenStylePropertiesLookInterface,
    GUIComponentScreenStylePropertiesLookParamsType:
        GUIComponentScreenStylePropertiesLookParams,
    GUIComponentScreenStylePropertiesLayoutParamsType:
        GUIComponentScreenStylePropertiesLayoutParams
>:
    GUIComponentScreenStyleProperties {

    public let lookType: GUIElementComponentStylePropertiesLookType<
        GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
        GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
    >
    public let lookParams: GUIComponentScreenStylePropertiesLookParamsType?
    public let layoutParams: GUIComponentScreenStylePropertiesLayoutParamsType?
    
    public init(
        lookType: GUIElementComponentStylePropertiesLookType<
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
        >,
        lookParams: GUIComponentScreenStylePropertiesLookParamsType?,
        layoutParams: GUIComponentScreenStylePropertiesLayoutParamsType?
    ) {
        self.lookType = lookType
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
