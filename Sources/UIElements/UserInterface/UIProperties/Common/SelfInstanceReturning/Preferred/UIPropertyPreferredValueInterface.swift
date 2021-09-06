//
//  Created by Łukasz Osiennik on 31/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import commons

public protocol UIPropertyPreferredValueInterface:
    SelfInstanceReturningInterface {
    
    static var preferred: Self? {
        get
    }
}

extension UIPropertyPreferredValueInterface {
    
    public static var valueName: Self? {
        return preferred
    }
}