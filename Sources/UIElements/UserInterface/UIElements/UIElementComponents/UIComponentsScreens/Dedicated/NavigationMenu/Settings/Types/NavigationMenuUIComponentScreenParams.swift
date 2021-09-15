//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentScreenParams<
    OptionKey:
        InputUIElementComponentActionsKeyInterface,
    OptionValue:
        NavigationMenuUIComponentGroupParamsOptionValueObjectInterface
>:
    NavigationMenuUIComponentGroupParamsInterface,
    UIComponentScreenParams,
    InputUIElementComponentParamsActionsInterface {
    
    public typealias ActionsKey =
        OptionKey
    
    public let title: String
    public let options: KeyValuePairs<
        OptionKey,
        OptionValue
    >
    
    public let actions: Actions?
    
    public static var `default`: Self {
        return .init(
            title: structName(
                dot: "title"
            ),
            options: [:],
            actions: nil
        )
    }
    
    public init(
        title: String,
        options: KeyValuePairs<
            OptionKey,
            OptionValue
        >,
        actions: Actions?
    ) {
        self.title = title
        self.options = options
        self.actions = actions
    }
}
