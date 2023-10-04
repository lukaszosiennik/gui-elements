//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

import commons

public protocol GUIPropertyDefaultValueBasedOnInputInterface:
    SelfInstanceReturningBasedOnInputInterface {
    
    static func `default`(
        styleType: GUIStyleType
    ) -> Self
}

extension GUIPropertyDefaultValueBasedOnInputInterface {
// : SelfInstanceReturningBasedOnInputInterface
    
    public static func valueName(
        input: GUIStyleType
    ) -> Self {
        return `default`(
            styleType: input
        )
    }
}
