//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentGroupStylePropertiesTemplate<
    UIComponentGroupStylePropertiesLookType: UIComponentGroupStylePropertiesLook,
    UIComponentGroupStylePropertiesLookParamsType: UIComponentGroupStylePropertiesLookParams,
    UIComponentGroupStylePropertiesLayoutParamsType: UIComponentGroupStylePropertiesLayoutParams
>: UIComponentGroupStyleProperties {

    public let lookType: UIElementComponentStylePropertiesLookType<
        EmptyUIElementComponentStylePropertiesOSLook,
        UIComponentGroupStylePropertiesLookType
    >
    public let lookParams: UIComponentGroupStylePropertiesLookParamsType?
    public let layoutParams: UIComponentGroupStylePropertiesLayoutParamsType?
    
    public init(
        lookType: UIElementComponentStylePropertiesLookType<
            EmptyUIElementComponentStylePropertiesOSLook,
            UIComponentGroupStylePropertiesLookType
        >,
        lookParams: UIComponentGroupStylePropertiesLookParamsType?,
        layoutParams: UIComponentGroupStylePropertiesLayoutParamsType?
    ) {
        self.lookType = lookType
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
