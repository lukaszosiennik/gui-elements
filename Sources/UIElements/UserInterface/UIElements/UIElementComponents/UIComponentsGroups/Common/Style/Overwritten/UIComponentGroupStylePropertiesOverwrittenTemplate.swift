//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

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
