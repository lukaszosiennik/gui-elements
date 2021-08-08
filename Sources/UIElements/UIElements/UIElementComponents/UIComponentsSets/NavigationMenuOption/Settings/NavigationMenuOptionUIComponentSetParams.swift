//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuOptionUIComponentSetParams: UIComponentSetParams {
    
    public let title: String
    
    public static var `default`: NavigationMenuOptionUIComponentSetParams {
        return .init(title: "NavigationMenuOptionUIComponentSetParams.title")
    }
    
    public init(title: String) {
        self.title = title
    }
}
