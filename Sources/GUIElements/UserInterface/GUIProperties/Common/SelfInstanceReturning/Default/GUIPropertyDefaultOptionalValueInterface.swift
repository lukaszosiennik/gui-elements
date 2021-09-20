//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import commons

public protocol GUIPropertyDefaultOptionalValueInterface:
    SelfSingleInstanceReturningInterface {
    
    static var `default`: Self? {
        get
    }
}

extension GUIPropertyDefaultOptionalValueInterface {
// : SelfSingleInstanceReturningInterface
    
    public static var valueName: Self? {
        return `default`
    }
}
