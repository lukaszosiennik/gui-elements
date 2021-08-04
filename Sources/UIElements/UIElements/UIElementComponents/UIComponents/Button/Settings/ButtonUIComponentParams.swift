//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct ButtonUIComponentParams: UIComponentParams {
    
    public let title: String
    
    public static var `default`: ButtonUIComponentParams {
        return .init(title: "ButtonUIComponentParams.title")
    }
}
