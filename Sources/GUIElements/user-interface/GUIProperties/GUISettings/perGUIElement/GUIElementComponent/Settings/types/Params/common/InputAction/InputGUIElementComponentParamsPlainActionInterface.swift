//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol InputGUIElementComponentParamsPlainActionInterface
where
    Self
        : GUIElementComponentParams {
    
    typealias Action =
        () -> Void
    
    var action: Action? {
        get
    }
}
