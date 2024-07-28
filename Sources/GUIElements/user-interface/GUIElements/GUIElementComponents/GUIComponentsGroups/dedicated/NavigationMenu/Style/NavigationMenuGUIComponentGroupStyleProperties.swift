//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public typealias NavigationMenuGUIComponentGroupStyleProperties =
    GUIComponentGroupStylePropertiesTemplate<
        GUIComponentGroupStylePropertiesLookTemplate<
            EmptyGUIComponentGroupStylePropertiesOSLook,
            NavigationMenuGUIComponentGroupStylePropertiesSystemLook
        >,
        NavigationMenuGUIComponentGroupStylePropertiesLookParams,
        NavigationMenuGUIComponentGroupStylePropertiesLayoutParams
    >
