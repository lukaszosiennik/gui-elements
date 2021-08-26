//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentGroupStylePropertiesTemplate<
    UIComponentGroupStylePropertiesLookType: UIComponentGroupStylePropertiesLook,
    UIComponentGroupStylePropertiesLookParamsType: UIComponentGroupStylePropertiesLookParams,
    UIComponentGroupStylePropertiesLayoutParamsType: UIComponentGroupStylePropertiesLayoutParams
>: UIComponentGroupStyleProperties {

    public let lookSort: UIElementComponentStylePropertiesLookSort<EmptyUIElementComponentStylePropertiesOSLook, UIComponentGroupStylePropertiesLookType>
    public let lookParams: UIComponentGroupStylePropertiesLookParamsType?
    public let layoutParams: UIComponentGroupStylePropertiesLayoutParamsType?
    
    public init(lookSort: UIElementComponentStylePropertiesLookSort<EmptyUIElementComponentStylePropertiesOSLook, UIComponentGroupStylePropertiesLookType>, lookParams: UIComponentGroupStylePropertiesLookParamsType?, layoutParams: UIComponentGroupStylePropertiesLayoutParamsType?) {
        self.lookSort = lookSort
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
