//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class NavigationMenuGUIComponentGroupParams<
    OptionKey:
        InputGUIElementComponentActionKeyInterface,
    OptionValue:
        NavigationMenuGUIElementComponentParamsOptionValueObjectInterface
>:
    NavigationMenuGUIElementComponentParamsBasis<
        NavigationMenuGUIElementComponentParamsOptionsKeyValueTemplate<
            OptionKey,
            OptionValue
        >,
        InputGUIElementComponentParamsPlainActionsFunction<
            OptionKey
        >
    >,
    GUIComponentGroupParams {}
