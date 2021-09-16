//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

open class NavigationMenuUIElementComponentParamsBasis<
    OptionKey:
        InputUIElementComponentActionKeyInterface,
    OptionValue:
        NavigationMenuUIElementComponentParamsOptionValueObjectInterface,
    ActionsFunction
>:
    NavigationMenuUIElementComponentParamsInterface,
    UIElementComponentParams {
    
    public typealias OptionKeyType =
        OptionKey
    public typealias OptionValueType =
        OptionValue
    
    public let title: String
    public let options: Options
    
    public let actions: ActionsFunction?
    
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
        actions: ActionsFunction?
    ) {
        self.title = title
        self.options = options
        self.actions = actions
    }
}
