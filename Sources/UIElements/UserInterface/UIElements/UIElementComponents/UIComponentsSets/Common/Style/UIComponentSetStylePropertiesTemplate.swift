//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentSetStylePropertiesTemplate<
    UIComponentSetStylePropertiesLookType: UIComponentSetStylePropertiesLook,
    UIComponentSetStylePropertiesLookParamsType: UIComponentSetStylePropertiesLookParams,
    UIComponentSetStylePropertiesLayoutParamsType: UIComponentSetStylePropertiesLayoutParams
>: UIComponentSetStyleProperties {

    public let lookSort: UIElementComponentStylePropertiesLookSort<EmptyUIElementComponentStylePropertiesOSLook, UIComponentSetStylePropertiesLookType>
    public let lookParams: UIComponentSetStylePropertiesLookParamsType?
    public let layoutParams: UIComponentSetStylePropertiesLayoutParamsType?
    
    public init(lookSort: UIElementComponentStylePropertiesLookSort<EmptyUIElementComponentStylePropertiesOSLook, UIComponentSetStylePropertiesLookType>, lookParams: UIComponentSetStylePropertiesLookParamsType?, layoutParams: UIComponentSetStylePropertiesLayoutParamsType?) {
        self.lookSort = lookSort
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
