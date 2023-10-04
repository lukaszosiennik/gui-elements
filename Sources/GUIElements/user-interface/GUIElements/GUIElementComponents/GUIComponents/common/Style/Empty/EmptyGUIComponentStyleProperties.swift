//
//  Created by Łukasz Osiennik on 24/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
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
