//
//  Created by Łukasz Osiennik on 16/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public class NavigationMenuUIElementComponentParamsBasis<
    OptionKey:
        InputUIElementComponentActionKeyInterface,
    OptionValue:
        NavigationMenuUIElementComponentParamsOptionValueObjectInterface,
    ActionsFunction
>:
    NavigationMenuUIElementComponentParamsExtendedBasis<
        OptionKey,
        OptionValue,
        ActionsFunction,
        
        VoidUIPropertyDefaultValue
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
