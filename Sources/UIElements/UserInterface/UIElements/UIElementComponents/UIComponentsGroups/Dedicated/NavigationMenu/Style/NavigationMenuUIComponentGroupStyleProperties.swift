//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public typealias NavigationMenuUIComponentGroupStyleProperties =
    UIComponentGroupStylePropertiesTemplate<
        UIComponentGroupStylePropertiesLookTemplate<
            EmptyUIElementComponentStylePropertiesOSLook,
            NavigationMenuUIComponentGroupStylePropertiesSystemLook
        >,
        NavigationMenuUIComponentGroupStylePropertiesLookParams,
        NavigationMenuUIComponentGroupStylePropertiesLayoutParams
    >