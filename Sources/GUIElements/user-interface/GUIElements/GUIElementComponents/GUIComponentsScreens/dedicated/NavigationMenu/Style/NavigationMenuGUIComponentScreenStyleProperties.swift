//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public typealias NavigationMenuGUIComponentScreenStyleProperties =
    GUIComponentScreenStylePropertiesTemplate<
        GUIComponentScreenStylePropertiesLookTemplate<
            EmptyGUIComponentScreenStylePropertiesOSLook,
            NavigationMenuGUIComponentScreenStylePropertiesSystemLook
        >,
        EmptyGUIComponentScreenStylePropertiesLookParams,
        NavigationMenuGUIComponentScreenStylePropertiesLayoutParams
    >
