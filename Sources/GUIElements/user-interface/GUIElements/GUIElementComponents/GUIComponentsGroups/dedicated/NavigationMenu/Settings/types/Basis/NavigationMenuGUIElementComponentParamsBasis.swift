//
//  Created by Łukasz Osiennik on 16/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public typealias EmptyNavigationMenuGUIElementComponentParamsAdditional =
    VoidGUIPropertyDefaultValue

public class NavigationMenuGUIElementComponentParamsBasis<
    Option:
        NavigationMenuGUIElementComponentParamsOptionInterface
>:
    NavigationMenuGUIElementComponentParamsExtendedBasis<
        Option,
        
        EmptyNavigationMenuGUIElementComponentParamsAdditional
    > {
    
    public init(
        strings: LocalizationStrings,
        options: Options
    ) {
        super.init(
            strings: strings,
            options: options,
            additional: .default
        )
    }
    
    public required init(
        strings: LocalizationStrings,
        options: Options,
        additional: AdditionalParams
    ) {
        super.init(
            strings: strings,
            options: options,
            additional: additional
        )
    }
}
