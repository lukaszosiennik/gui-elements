//
//  Created by Łukasz Osiennik on 06/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

import commons

extension CommonsExtension:
    InstanceReturningBasedOnInputInterface,
    SelfInstanceReturningBasedOnInputInterface
where
    ExtendedType
        == Void {
    
    public static func valueName(
        input: Void
    ) -> ExtendedType {
        return
    }
}
