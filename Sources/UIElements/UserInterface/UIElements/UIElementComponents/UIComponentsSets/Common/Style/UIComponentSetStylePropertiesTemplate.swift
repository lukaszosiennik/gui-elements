//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentSetStylePropertiesTemplate<
    UIElementComponentStylePropertiesLookInterfaceType: UIComponentSetStylePropertiesLookInterface,
    UIComponentSetStylePropertiesLookParamsType: UIComponentSetStylePropertiesLookParams,
    UIComponentSetStylePropertiesLayoutParamsType: UIComponentSetStylePropertiesLayoutParams
>: UIComponentSetStyleProperties {

    public let lookType: UIElementComponentStylePropertiesLookType<
        UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesOSLookType,
        UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesSystemLookType
    >
    public let lookParams: UIComponentSetStylePropertiesLookParamsType?
    public let layoutParams: UIComponentSetStylePropertiesLayoutParamsType?
    
    public init(
        lookType: UIElementComponentStylePropertiesLookType<
            UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesOSLookType,
            UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesSystemLookType
        >,
        lookParams: UIComponentSetStylePropertiesLookParamsType?,
        layoutParams: UIComponentSetStylePropertiesLayoutParamsType?
    ) {
        self.lookType = lookType
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
