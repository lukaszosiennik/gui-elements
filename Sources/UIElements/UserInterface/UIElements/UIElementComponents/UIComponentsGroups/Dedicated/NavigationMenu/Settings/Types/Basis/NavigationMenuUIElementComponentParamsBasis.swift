//
//  Created by Łukasz Osiennik on 16/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public typealias EmptyNavigationMenuUIElementComponentParamsAdditional = VoidUIPropertyDefaultValue

public class NavigationMenuUIElementComponentParamsBasis<
    OptionsKeyValue:
        NavigationMenuUIElementComponentParamsOptionsKeyValueInterface,
    ActionsFunction
>:
    NavigationMenuUIElementComponentParamsExtendedBasis<
        OptionsKeyValue,
        ActionsFunction,
        
        EmptyNavigationMenuUIElementComponentParamsAdditional
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
