//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public final class NavigationMenuGUIComponentGroupParams<
    OptionValue:
        NavigationMenuGUIElementComponentParamsOptionValueInterface
>:
    NavigationMenuGUIElementComponentParamsBasis<
        NavigationMenuGUIElementComponentParamsOption<
            OptionValue
        >
    >,
    GUIComponentGroupParams {}
