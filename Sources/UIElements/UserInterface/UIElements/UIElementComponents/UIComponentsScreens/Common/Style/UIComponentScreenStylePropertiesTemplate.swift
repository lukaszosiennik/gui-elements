//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentScreenStylePropertiesTemplate<
    UIComponentScreenStylePropertiesLookType: UIComponentScreenStylePropertiesLook,
    UIComponentScreenStylePropertiesLookParamsType: UIComponentScreenStylePropertiesLookParams,
    UIComponentScreenStylePropertiesLayoutParamsType: UIComponentScreenStylePropertiesLayoutParams
>: UIComponentScreenStyleProperties {

    public let lookSort: UIElementComponentStylePropertiesLookSort<EmptyUIElementComponentStylePropertiesOSLook, UIComponentScreenStylePropertiesLookType>
    public let lookParams: UIComponentScreenStylePropertiesLookParamsType?
    public let layoutParams: UIComponentScreenStylePropertiesLayoutParamsType?
    
    public init(lookSort: UIElementComponentStylePropertiesLookSort<EmptyUIElementComponentStylePropertiesOSLook, UIComponentScreenStylePropertiesLookType>, lookParams: UIComponentScreenStylePropertiesLookParamsType?, layoutParams: UIComponentScreenStylePropertiesLayoutParamsType?) {
        self.lookSort = lookSort
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
