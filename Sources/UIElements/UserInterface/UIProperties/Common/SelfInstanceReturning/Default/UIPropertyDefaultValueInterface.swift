//
//  Created by Łukasz Osiennik on 23/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import commons

public protocol UIPropertyDefaultValueInterface:
    SelfInstanceReturningInterface {
    
    static var `default`: Self {
        get
    }
}

extension UIPropertyDefaultValueInterface {
    
    public static var valueName: Self {
        return `default`
    }
}
