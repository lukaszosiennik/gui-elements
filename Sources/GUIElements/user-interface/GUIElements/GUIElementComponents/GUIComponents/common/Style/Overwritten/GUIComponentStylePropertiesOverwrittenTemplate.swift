//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct GUIComponentStylePropertiesOverwrittenTemplate<
    GUIComponentStylePropertiesOverwrittenLookType:
        GUIComponentStylePropertiesOverwrittenLook,
    GUIComponentStylePropertiesOverwrittenLookParamsType:
        GUIComponentStylePropertiesOverwrittenLookParams,
    GUIComponentStylePropertiesOverwrittenLayoutParamsType:
        GUIComponentStylePropertiesOverwrittenLayoutParams
>:
    GUIComponentStylePropertiesOverwritten {

    public let look: GUIComponentStylePropertiesOverwrittenLookType?
    public let lookParams: GUIComponentStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: GUIComponentStylePropertiesOverwrittenLayoutParamsType?
    
    public init(
        look: GUIComponentStylePropertiesOverwrittenLookType? = nil,
        lookParams: GUIComponentStylePropertiesOverwrittenLookParamsType? = nil,
        layoutParams: GUIComponentStylePropertiesOverwrittenLayoutParamsType? = nil
    ) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
