//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public typealias PlaceholderGUIComponentStyleProperties =
    GUIComponentStylePropertiesTemplate<
        GUIComponentStylePropertiesLookTemplate<
            EmptyGUIComponentStylePropertiesOSLook,
            PlaceholderGUIComponentStylePropertiesSystemLook
        >,
        EmptyGUIComponentStylePropertiesLookParams,
        PlaceholderGUIComponentStylePropertiesLayoutParams
    >
