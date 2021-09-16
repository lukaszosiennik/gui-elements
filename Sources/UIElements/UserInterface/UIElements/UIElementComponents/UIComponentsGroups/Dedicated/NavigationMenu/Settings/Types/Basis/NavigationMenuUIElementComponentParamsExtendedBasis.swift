//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

open class NavigationMenuUIElementComponentParamsExtendedBasis<
    OptionKey:
        InputUIElementComponentActionKeyInterface,
    OptionValue:
        NavigationMenuUIElementComponentParamsOptionValueObjectInterface,
    ActionsFunction,
    
    AdditionalParams:
        UIPropertyDefaultValueInterface
>:
    NavigationMenuUIElementComponentParamsInterface,
    UIElementComponentParams {
    
    public typealias OptionKeyType =
        OptionKey
    public typealias OptionValueType =
        OptionValue
    
    public typealias AdditionalParams =
        AdditionalParams
    
    public let title: String
    public let options: Options
    public let actions: ActionsFunction?
    
    public let additional: AdditionalParams
    
    public static var `default`: Self {
        return .init(
            title: structName(
                dot: "title"
            ),
            options: [:],
            actions: nil,
            additional: .default
        )
    }
    
    public required init(
        title: String,
        options: Options,
        actions: ActionsFunction?,
        additional: AdditionalParams
    ) {
        self.title = title
        self.options = options
        self.actions = actions
        self.additional = additional
    }
}
