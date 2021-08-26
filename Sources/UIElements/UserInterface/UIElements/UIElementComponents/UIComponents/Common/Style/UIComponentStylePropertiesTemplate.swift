//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentStylePropertiesTemplate<
    UIComponentStylePropertiesOSLookType: UIComponentStylePropertiesOSLook,
    UIComponentStylePropertiesLookType: UIComponentStylePropertiesLook,
    UIComponentStylePropertiesLookParamsType: UIComponentStylePropertiesLookParams,
    UIComponentStylePropertiesLayoutParamsType: UIComponentStylePropertiesLayoutParams
>: UIComponentStyleProperties {

    public let lookSort: UIElementComponentStylePropertiesLookSort<UIComponentStylePropertiesOSLookType, UIComponentStylePropertiesLookType>
    public let lookParams: UIComponentStylePropertiesLookParamsType?
    public let layoutParams: UIComponentStylePropertiesLayoutParamsType?
    
    public init(lookSort: UIElementComponentStylePropertiesLookSort<UIComponentStylePropertiesOSLookType, UIComponentStylePropertiesLookType>, lookParams: UIComponentStylePropertiesLookParamsType?, layoutParams: UIComponentStylePropertiesLayoutParamsType?) {
        self.lookSort = lookSort
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
