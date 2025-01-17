//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct GUIComponentScreenStylePropertiesOverwrittenTemplate<
    GUIComponentScreenStylePropertiesOverwrittenLookType:
        GUIComponentScreenStylePropertiesOverwrittenLook,
    GUIComponentScreenStylePropertiesOverwrittenLookParamsType:
        GUIComponentScreenStylePropertiesOverwrittenLookParams,
    GUIComponentScreenStylePropertiesOverwrittenLayoutParamsType:
        GUIComponentScreenStylePropertiesOverwrittenLayoutParams
>:
    GUIComponentScreenStylePropertiesOverwritten {

    public let look: GUIComponentScreenStylePropertiesOverwrittenLookType?
    public let lookParams: GUIComponentScreenStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: GUIComponentScreenStylePropertiesOverwrittenLayoutParamsType?
    
    public init(
        look: GUIComponentScreenStylePropertiesOverwrittenLookType? = nil,
        lookParams: GUIComponentScreenStylePropertiesOverwrittenLookParamsType? = nil,
        layoutParams: GUIComponentScreenStylePropertiesOverwrittenLayoutParamsType? = nil
    ) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
