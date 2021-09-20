//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import commons

public protocol UIPropertyDefaultValueBasedOnInputInterface:
    SelfInstanceReturningBasedOnInputInterface {
    
    static func `default`(
        styleType: UIStyleType
    ) -> Self
}

extension UIPropertyDefaultValueBasedOnInputInterface {
// : SelfInstanceReturningBasedOnInputInterface
    
    public static func valueName(
        input: UIStyleType
    ) -> Self {
        return `default`(
            styleType: input
        )
    }
}
