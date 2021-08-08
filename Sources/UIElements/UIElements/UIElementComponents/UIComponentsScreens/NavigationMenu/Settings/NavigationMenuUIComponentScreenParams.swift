//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentScreenParams<OptionKey: NavigationMenuOptionKeyInterface>: UIComponentScreenParams {
    
    public let title: String
    public let options: KeyValuePairs<OptionKey, String>
    public let optionsAction: ((OptionKey) -> Void)?
    
    public static var `default`: NavigationMenuUIComponentScreenParams {
        return .init(
            title: "NavigationMenuUIComponentScreenParams.title",
            options: [:],
            optionsAction: nil
        )
    }
    
    public init(title: String, options: KeyValuePairs<OptionKey, String>, optionsAction: ((OptionKey) -> Void)?) {
        self.title = title
        self.options = options
        self.optionsAction = optionsAction
    }
}
