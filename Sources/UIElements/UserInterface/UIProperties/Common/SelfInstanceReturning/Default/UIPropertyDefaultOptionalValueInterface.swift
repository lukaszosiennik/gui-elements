//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import commons

public protocol UIPropertyDefaultOptionalValueInterface:
    SelfInstanceReturningInterface {
    
    static var `default`: Self? {
        get
    }
}
