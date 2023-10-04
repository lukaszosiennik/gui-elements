//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public typealias NavigationMenuOptionGUIComponentSetStyleProperties =
    GUIComponentSetStylePropertiesTemplate<
        GUIComponentSetStylePropertiesLookTemplate<
            EmptyGUIComponentSetStylePropertiesOSLook,
            NavigationMenuOptionGUIComponentSetStylePropertiesSystemLook
        >,
        EmptyGUIComponentSetStylePropertiesLookParams,
        NavigationMenuOptionGUIComponentSetStylePropertiesLayoutParams
    >
