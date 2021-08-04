//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct LabelUIComponentParams: UIComponentParams {
    
    let text: String
    
    static var `default`: LabelUIComponentParams {
        return .init(text: "LabelUIComponentParams.text")
    }
}
