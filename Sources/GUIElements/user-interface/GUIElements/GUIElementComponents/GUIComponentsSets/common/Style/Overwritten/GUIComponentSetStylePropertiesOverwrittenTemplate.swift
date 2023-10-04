//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct GUIComponentSetStylePropertiesOverwrittenTemplate<
    GUIComponentSetStylePropertiesOverwrittenLookType:
        GUIComponentSetStylePropertiesOverwrittenLook,
    GUIComponentSetStylePropertiesOverwrittenLookParamsType:
        GUIComponentSetStylePropertiesOverwrittenLookParams,
    GUIComponentSetStylePropertiesOverwrittenLayoutParamsType:
        GUIComponentSetStylePropertiesOverwrittenLayoutParams
>:
    GUIComponentSetStylePropertiesOverwritten {

    public let look: GUIComponentSetStylePropertiesOverwrittenLookType?
    public let lookParams: GUIComponentSetStylePropertiesOverwrittenLookParamsType?
    public let layoutParams: GUIComponentSetStylePropertiesOverwrittenLayoutParamsType?
    
    public init(
        look: GUIComponentSetStylePropertiesOverwrittenLookType? = nil,
        lookParams: GUIComponentSetStylePropertiesOverwrittenLookParamsType? = nil,
        layoutParams: GUIComponentSetStylePropertiesOverwrittenLayoutParamsType? = nil
    ) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
