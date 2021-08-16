//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentStylePropertiesOverwrittenTemplate<UIElementComponentStylePropertiesOverwrittenLookType: UIComponentStylePropertiesOverwrittenLook,
                                                            UIElementComponentStylePropertiesOverwrittenLookParamsType: UIComponentStylePropertiesOverwrittenLookParams,
                                                            UIElementComponentStylePropertiesOverwrittenLayoutParamsType: UIComponentStylePropertiesOverwrittenLayoutParams>: UIComponentStylePropertiesOverwritten {

    public let look: UIElementComponentStylePropertiesOverwrittenLookType?
    public let lookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: UIElementComponentStylePropertiesOverwrittenLayoutParamsType?
    
    public init(look: UIElementComponentStylePropertiesOverwrittenLookType? = nil, lookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType? = nil, layoutParams: UIElementComponentStylePropertiesOverwrittenLayoutParamsType? = nil) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}

public struct UIComponentSetStylePropertiesOverwrittenTemplate<UIElementComponentStylePropertiesOverwrittenLookType: UIComponentSetStylePropertiesOverwrittenLook,
                                                               UIElementComponentStylePropertiesOverwrittenLookParamsType: UIComponentSetStylePropertiesOverwrittenLookParams,
                                                               UIElementComponentStylePropertiesOverwrittenLayoutParamsType: UIComponentSetStylePropertiesOverwrittenLayoutParams>: UIComponentSetStylePropertiesOverwritten {

    public let look: UIElementComponentStylePropertiesOverwrittenLookType?
    public let lookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: UIElementComponentStylePropertiesOverwrittenLayoutParamsType?
    
    public init(look: UIElementComponentStylePropertiesOverwrittenLookType? = nil, lookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType? = nil, layoutParams: UIElementComponentStylePropertiesOverwrittenLayoutParamsType? = nil) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}

public struct UIComponentGroupStylePropertiesOverwrittenTemplate<UIElementComponentStylePropertiesOverwrittenLookType: UIComponentGroupStylePropertiesOverwrittenLook,
                                                                 UIElementComponentStylePropertiesOverwrittenLookParamsType: UIComponentGroupStylePropertiesOverwrittenLookParams,
                                                                 UIElementComponentStylePropertiesOverwrittenLayoutParamsType: UIComponentGroupStylePropertiesOverwrittenLayoutParams>: UIComponentGroupStylePropertiesOverwritten {

    public let look: UIElementComponentStylePropertiesOverwrittenLookType?
    public let lookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: UIElementComponentStylePropertiesOverwrittenLayoutParamsType?
    
    public init(look: UIElementComponentStylePropertiesOverwrittenLookType? = nil, lookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType? = nil, layoutParams: UIElementComponentStylePropertiesOverwrittenLayoutParamsType? = nil) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}

public struct UIComponentScreenStylePropertiesOverwrittenTemplate<UIElementComponentStylePropertiesOverwrittenLookType: UIComponentScreenStylePropertiesOverwrittenLook,
                                                                  UIElementComponentStylePropertiesOverwrittenLookParamsType: UIComponentScreenStylePropertiesOverwrittenLookParams,
                                                                  UIElementComponentStylePropertiesOverwrittenLayoutParamsType: UIComponentScreenStylePropertiesOverwrittenLayoutParams>: UIComponentScreenStylePropertiesOverwritten {

    public let look: UIElementComponentStylePropertiesOverwrittenLookType?
    public let lookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: UIElementComponentStylePropertiesOverwrittenLayoutParamsType?
    
    public init(look: UIElementComponentStylePropertiesOverwrittenLookType? = nil, lookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType? = nil, layoutParams: UIElementComponentStylePropertiesOverwrittenLayoutParamsType? = nil) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
