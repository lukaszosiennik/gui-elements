//
//  Created by Łukasz Osiennik on 24/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public typealias EmptyGUIComponentStyleProperties =
    GUIComponentStylePropertiesTemplate<
        GUIComponentStylePropertiesLookTemplate<
            EmptyGUIComponentStylePropertiesOSLook,
            EmptyGUIComponentStylePropertiesSystemLook
        >,
        EmptyGUIComponentStylePropertiesLookParams,
        EmptyGUIComponentStylePropertiesLayoutParams
    >
