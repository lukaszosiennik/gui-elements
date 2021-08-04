//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelUIComponentParams: UIComponentParams {
    
    public let text: String
    
    public static var `default`: LabelUIComponentParams {
        return .init(text: "LabelUIComponentParams.text")
    }
}
