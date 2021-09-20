//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import commons

public protocol UIPropertyDefaultOptionalValueInterface:
    SelfSingleInstanceReturningInterface {
    
    static var `default`: Self? {
        get
    }
}

extension UIPropertyDefaultOptionalValueInterface {
// : SelfSingleInstanceReturningInterface
    
    public static var valueName: Self? {
        return `default`
    }
}
