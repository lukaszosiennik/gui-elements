//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CommonUIComponentScreenParams: UIComponentScreenParams {
    
    public let title: String
    
    public static var `default`: CommonUIComponentScreenParams {
        return .init(title: "CommonUIComponentScreenParams.title")
    }
    
    public init(title: String) {
        self.title = title
    }
}
