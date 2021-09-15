//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public class NavigationMenuUIElementComponentParamsBasis<
    OptionKey:
        InputUIElementComponentActionsKeyInterface,
    OptionValue:
        NavigationMenuUIElementComponentParamsOptionValueObjectInterface
>:
    NavigationMenuUIElementComponentParamsInterface,
    UIElementComponentParams,
    InputUIElementComponentParamsActionsInterface {
    
    public typealias OptionKeyType =
        OptionKey
    public typealias OptionValueType =
        OptionValue
    
    public typealias ActionsKeyType =
        OptionKey
    
    public let title: String
    public let options: Options
    
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
    
    public required init(
        title: String,
        options: Options,
        actions: Actions?
    ) {
        self.title = title
        self.options = options
        self.actions = actions
    }
}
