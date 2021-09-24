//
//  Created by Łukasz Osiennik on 16/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public typealias EmptyNavigationMenuGUIElementComponentParamsAdditional =
    VoidGUIPropertyDefaultValue

public class NavigationMenuGUIElementComponentParamsBasis<
    OptionsKeyValue:
        NavigationMenuGUIElementComponentParamsOptionsKeyValueInterface,
    ActionsFunction
>:
    NavigationMenuGUIElementComponentParamsExtendedBasis<
        OptionsKeyValue,
        ActionsFunction,
        
        EmptyNavigationMenuGUIElementComponentParamsAdditional
    > {
    
    public init(
        title: String,
        options: Options,
        actions: ActionsFunction?
    ) {
        super.init(
            title: title,
            options: options,
            actions: actions,
            additional: .default
        )
    }
    
    public required init(
        title: String,
        options: Options,
        actions: ActionsFunction?,
        additional: AdditionalParams
    ) {
        super.init(
            title: title,
            options: options,
            actions: actions,
            additional: additional
        )
    }
}
