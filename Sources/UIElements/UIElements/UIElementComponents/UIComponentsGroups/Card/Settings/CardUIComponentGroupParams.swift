//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CardUIComponentGroupParams: UIComponentGroupParams {
    
    public let title: String
    
    public static var `default`: CardUIComponentGroupParams {
        return .init(
            title: "CardUIComponentGroupParams.title"
        )
    }
    
    public init(title: String) {
        self.title = title
    }
}