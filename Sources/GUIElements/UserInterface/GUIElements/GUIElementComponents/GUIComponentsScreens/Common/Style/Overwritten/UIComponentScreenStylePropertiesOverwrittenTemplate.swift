//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIComponentScreenStylePropertiesOverwrittenTemplate<
    UIComponentScreenStylePropertiesOverwrittenLookType:
        UIComponentScreenStylePropertiesOverwrittenLook,
    UIComponentScreenStylePropertiesOverwrittenLookParamsType:
        UIComponentScreenStylePropertiesOverwrittenLookParams,
    UIComponentScreenStylePropertiesOverwrittenLayoutParamsType:
        UIComponentScreenStylePropertiesOverwrittenLayoutParams
>:
    UIComponentScreenStylePropertiesOverwritten {

    public let look: UIComponentScreenStylePropertiesOverwrittenLookType?
    public let lookParams: UIComponentScreenStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: UIComponentScreenStylePropertiesOverwrittenLayoutParamsType?
    
    public init(
        look: UIComponentScreenStylePropertiesOverwrittenLookType? = nil,
        lookParams: UIComponentScreenStylePropertiesOverwrittenLookParamsType? = nil,
        layoutParams: UIComponentScreenStylePropertiesOverwrittenLayoutParamsType? = nil
    ) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
