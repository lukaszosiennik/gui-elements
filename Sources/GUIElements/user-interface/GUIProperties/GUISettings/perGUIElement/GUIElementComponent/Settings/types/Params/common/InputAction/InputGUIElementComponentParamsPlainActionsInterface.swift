//
//  Created by Łukasz Osiennik on 09/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol InputGUIElementComponentParamsPlainActionsInterface
where
    Self
        : GUIElementComponentParams {
    
    associatedtype ActionKeyType:
        InputGUIElementComponentActionKeyInterface
    
    typealias Actions =
        InputGUIElementComponentParamsPlainActionsFunction<ActionKeyType>
    
    var actions: Actions? {
        get
    }
}
