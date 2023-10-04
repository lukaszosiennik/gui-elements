//
//  Created by Łukasz Osiennik on 31/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

import commons

public protocol GUIPropertyPreferredValueInterface:
    SelfSingleInstanceReturningInterface {
    
    static var preferred: Self? {
        get
    }
}

extension GUIPropertyPreferredValueInterface {
// : SelfSingleInstanceReturningInterface
    
    public static var valueName: Self? {
        return preferred
    }
}
