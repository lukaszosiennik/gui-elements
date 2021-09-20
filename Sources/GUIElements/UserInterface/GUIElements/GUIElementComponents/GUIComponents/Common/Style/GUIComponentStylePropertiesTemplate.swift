//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentStylePropertiesTemplate<
    UIElementComponentStylePropertiesLookInterfaceType:
        UIComponentStylePropertiesLookInterface,
    UIComponentStylePropertiesLookParamsType:
        UIComponentStylePropertiesLookParams,
    UIComponentStylePropertiesLayoutParamsType:
        UIComponentStylePropertiesLayoutParams
>:
    UIComponentStyleProperties {

    public let lookType: UIElementComponentStylePropertiesLookType<
        UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesOSLookType,
        UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesSystemLookType
    >
    public let lookParams: UIComponentStylePropertiesLookParamsType?
    public let layoutParams: UIComponentStylePropertiesLayoutParamsType?
    
    public init(
        lookType: UIElementComponentStylePropertiesLookType<
            UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesOSLookType,
            UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesSystemLookType
        >,
        lookParams: UIComponentStylePropertiesLookParamsType?,
        layoutParams: UIComponentStylePropertiesLayoutParamsType?
    ) {
        self.lookType = lookType
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
