//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct GUIComponentGroupStylePropertiesOverwrittenTemplate<
    GUIComponentGroupStylePropertiesOverwrittenLookType:
        GUIComponentGroupStylePropertiesOverwrittenLook,
    GUIComponentGroupStylePropertiesOverwrittenLookParamsType:
        GUIComponentGroupStylePropertiesOverwrittenLookParams,
    GUIComponentGroupStylePropertiesOverwrittenLayoutParamsType:
        GUIComponentGroupStylePropertiesOverwrittenLayoutParams
>:
    GUIComponentGroupStylePropertiesOverwritten {

    public let look: GUIComponentGroupStylePropertiesOverwrittenLookType?
    public let lookParams: GUIComponentGroupStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: GUIComponentGroupStylePropertiesOverwrittenLayoutParamsType?
    
    public init(
        look: GUIComponentGroupStylePropertiesOverwrittenLookType? = nil,
        lookParams: GUIComponentGroupStylePropertiesOverwrittenLookParamsType? = nil,
        layoutParams: GUIComponentGroupStylePropertiesOverwrittenLayoutParamsType? = nil
    ) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
