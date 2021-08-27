//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentGroupStylePropertiesOverwrittenTemplate<
    UIComponentGroupStylePropertiesOverwrittenLookType: UIComponentGroupStylePropertiesOverwrittenLook,
    UIComponentGroupStylePropertiesOverwrittenLookParamsType: UIComponentGroupStylePropertiesOverwrittenLookParams,
    UIComponentGroupStylePropertiesOverwrittenLayoutParamsType: UIComponentGroupStylePropertiesOverwrittenLayoutParams
>: UIComponentGroupStylePropertiesOverwritten {

    public let look: UIComponentGroupStylePropertiesOverwrittenLookType?
    public let lookParams: UIComponentGroupStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: UIComponentGroupStylePropertiesOverwrittenLayoutParamsType?
    
    public init(
        look: UIComponentGroupStylePropertiesOverwrittenLookType? = nil,
        lookParams: UIComponentGroupStylePropertiesOverwrittenLookParamsType? = nil,
        layoutParams: UIComponentGroupStylePropertiesOverwrittenLayoutParamsType? = nil
    ) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
