//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuOptionUIComponentSetParams:
    UIComponentSetParams,
    InputUIElementComponentParamsActionInterface {
    
    public let title: String
    public let action: Action?
    
    public static var `default`: Self {
        return .init(
            title: structName(
                dot: "title"
            ),
            action: nil
        )
    }
    
    public init(
        title: String,
        action: Action?
    ) {
        self.title = title
        self.action = action
    }
}
