//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIElementComponentLayoutParamsOSConfiguration:
    Hashable {
    
    let isPreferred: Bool
    
    public init(isPreferred: Bool) {
        self.isPreferred = isPreferred
    }
}
