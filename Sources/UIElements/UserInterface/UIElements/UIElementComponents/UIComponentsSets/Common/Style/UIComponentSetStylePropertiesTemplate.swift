//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentSetStylePropertiesTemplate<UIElementComponentStylePropertiesLookType: UIComponentSetStylePropertiesLook,
                                                    UIElementComponentStylePropertiesLookParamsType: UIComponentSetStylePropertiesLookParams,
                                                    UIElementComponentStylePropertiesLayoutParamsType: UIComponentSetStylePropertiesLayoutParams>: UIComponentSetStyleProperties {

    public let lookSort: UIElementComponentStylePropertiesLookSort<UIElementComponentStylePropertiesLookType>
    public let lookParams: UIElementComponentStylePropertiesLookParamsType?
    public let layoutParams: UIElementComponentStylePropertiesLayoutParamsType?
    
    public init(lookSort: UIElementComponentStylePropertiesLookSort<UIElementComponentStylePropertiesLookType>, lookParams: UIElementComponentStylePropertiesLookParamsType?, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?) {
        self.lookSort = lookSort
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}