//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct SelectionListOptionUIComponentSetParams: UIComponentSetParams {
    
    let title: String
    
    static var `default`: SelectionListOptionUIComponentSetParams {
        return .init(title: "SelectionListOptionUIComponentSetParams.title")
    }
}
