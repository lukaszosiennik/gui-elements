//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol InputUIElementComponentParamsActionInterface
where
    Self:
        UIElementComponentParams {
    
    typealias Action =
        () -> Void
    
    var action: Action? {
        get
    }
}
