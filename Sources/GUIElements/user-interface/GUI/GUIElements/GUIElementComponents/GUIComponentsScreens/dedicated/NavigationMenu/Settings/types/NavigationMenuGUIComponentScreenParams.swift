//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class NavigationMenuGUIComponentScreenParams<
    OptionValue:
        NavigationMenuGUIElementComponentParamsOptionValueInterface
>:
    NavigationMenuGUIElementComponentParamsBasis<
        NavigationMenuGUIElementComponentParamsOption<
            OptionValue
        >
    >,
    GUIComponentScreenParams {}