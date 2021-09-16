//
//  Created by Łukasz Osiennik on 09/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol InputUIElementComponentParamsPlainActionsInterface
where
    Self
        : UIElementComponentParams {
    
    associatedtype ActionKeyType:
        InputUIElementComponentActionKeyInterface
    
    typealias Actions =
        InputUIElementComponentParamsPlainActionsFunction<ActionKeyType>
    
    var actions: Actions? {
        get
    }
}
