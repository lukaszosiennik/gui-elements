//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct CommonUIComponentScreenParams: UIComponentScreenParams {
    
    let title: String
    
    static var `default`: CommonUIComponentScreenParams {
        return .init(title: "CommonUIComponentScreenParams.title")
    }
}
