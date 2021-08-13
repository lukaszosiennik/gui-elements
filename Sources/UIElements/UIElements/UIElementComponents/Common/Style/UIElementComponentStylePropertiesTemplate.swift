//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentStylePropertiesTemplate<UIElementComponentStylePropertiesLookType: UIComponentStylePropertiesLook,
                                                 UIElementComponentStylePropertiesLookParamsType: UIComponentStylePropertiesLookParams,
                                                 UIElementComponentStylePropertiesLayoutParamsType: UIComponentStylePropertiesLayoutParams>: UIComponentStyleProperties {

    public let look: UIElementComponentStylePropertiesLookType?
    public let lookParams: UIElementComponentStylePropertiesLookParamsType?
    public let layoutParams: UIElementComponentStylePropertiesLayoutParamsType?
    
    public init(look: UIElementComponentStylePropertiesLookType?, lookParams: UIElementComponentStylePropertiesLookParamsType?, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}

public struct UIComponentSetStylePropertiesTemplate<UIElementComponentStylePropertiesLookType: UIComponentSetStylePropertiesLook,
                                                    UIElementComponentStylePropertiesLookParamsType: UIComponentSetStylePropertiesLookParams,
                                                    UIElementComponentStylePropertiesLayoutParamsType: UIComponentSetStylePropertiesLayoutParams>: UIComponentSetStyleProperties {

    public let look: UIElementComponentStylePropertiesLookType?
    public let lookParams: UIElementComponentStylePropertiesLookParamsType?
    public let layoutParams: UIElementComponentStylePropertiesLayoutParamsType?
    
    public init(look: UIElementComponentStylePropertiesLookType?, lookParams: UIElementComponentStylePropertiesLookParamsType?, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}

public struct UIComponentGroupStylePropertiesTemplate<UIElementComponentStylePropertiesLookType: UIComponentGroupStylePropertiesLook,
                                                      UIElementComponentStylePropertiesLookParamsType: UIComponentGroupStylePropertiesLookParams,
                                                      UIElementComponentStylePropertiesLayoutParamsType: UIComponentGroupStylePropertiesLayoutParams>: UIComponentGroupStyleProperties {

    public let look: UIElementComponentStylePropertiesLookType?
    public let lookParams: UIElementComponentStylePropertiesLookParamsType?
    public let layoutParams: UIElementComponentStylePropertiesLayoutParamsType?
    
    public init(look: UIElementComponentStylePropertiesLookType?, lookParams: UIElementComponentStylePropertiesLookParamsType?, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}

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
