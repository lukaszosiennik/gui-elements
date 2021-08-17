//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentScreenStylePropertiesTemplate<UIElementComponentStylePropertiesLookType: UIComponentScreenStylePropertiesLook,
                                                       UIElementComponentStylePropertiesLookParamsType: UIComponentScreenStylePropertiesLookParams,
                                                       UIElementComponentStylePropertiesLayoutParamsType: UIComponentScreenStylePropertiesLayoutParams>: UIComponentScreenStyleProperties {

    public let look: UIElementComponentStylePropertiesLookType?
    public let lookParams: UIElementComponentStylePropertiesLookParamsType?
    public let layoutParams: UIElementComponentStylePropertiesLayoutParamsType?
    
    public init(look: UIElementComponentStylePropertiesLookType?, lookParams: UIElementComponentStylePropertiesLookParamsType?, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}