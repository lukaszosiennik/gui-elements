//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentSetStylePropertiesOverwrittenTemplate<
    UIComponentSetStylePropertiesOverwrittenLookType: UIComponentSetStylePropertiesOverwrittenLook,
    UIComponentSetStylePropertiesOverwrittenLookParamsType: UIComponentSetStylePropertiesOverwrittenLookParams,
    UIComponentSetStylePropertiesOverwrittenLayoutParamsType: UIComponentSetStylePropertiesOverwrittenLayoutParams
>:
    UIComponentSetStylePropertiesOverwritten {

    public let look: UIComponentSetStylePropertiesOverwrittenLookType?
    public let lookParams: UIComponentSetStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: UIComponentSetStylePropertiesOverwrittenLayoutParamsType?
    
    public init(
        look: UIComponentSetStylePropertiesOverwrittenLookType? = nil,
        lookParams: UIComponentSetStylePropertiesOverwrittenLookParamsType? = nil,
        layoutParams: UIComponentSetStylePropertiesOverwrittenLayoutParamsType? = nil
    ) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
