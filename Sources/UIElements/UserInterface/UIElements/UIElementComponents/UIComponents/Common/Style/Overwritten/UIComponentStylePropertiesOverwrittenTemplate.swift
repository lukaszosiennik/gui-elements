//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentStylePropertiesOverwrittenTemplate<
    UIComponentStylePropertiesOverwrittenLookType: UIComponentStylePropertiesOverwrittenLook,
    UIComponentStylePropertiesOverwrittenLookParamsType: UIComponentStylePropertiesOverwrittenLookParams,
    UIComponentStylePropertiesOverwrittenLayoutParamsType: UIComponentStylePropertiesOverwrittenLayoutParams
>:
    UIComponentStylePropertiesOverwritten {

    public let look: UIComponentStylePropertiesOverwrittenLookType?
    public let lookParams: UIComponentStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: UIComponentStylePropertiesOverwrittenLayoutParamsType?
    
    public init(
        look: UIComponentStylePropertiesOverwrittenLookType? = nil,
        lookParams: UIComponentStylePropertiesOverwrittenLookParamsType? = nil,
        layoutParams: UIComponentStylePropertiesOverwrittenLayoutParamsType? = nil
    ) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
