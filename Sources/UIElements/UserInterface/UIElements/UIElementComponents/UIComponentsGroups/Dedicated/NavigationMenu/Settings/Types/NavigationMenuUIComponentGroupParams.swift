//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class NavigationMenuUIComponentGroupParams<
    OptionKey:
        InputUIElementComponentActionKeyInterface,
    OptionValue:
        NavigationMenuUIElementComponentParamsOptionValueObjectInterface
>:
    NavigationMenuUIElementComponentParamsBasis<
        OptionKey,
        OptionValue,
        InputUIElementComponentParamsPlainActionsFunction<
            OptionKey
        >
    >,
    UIComponentGroupParams {}
