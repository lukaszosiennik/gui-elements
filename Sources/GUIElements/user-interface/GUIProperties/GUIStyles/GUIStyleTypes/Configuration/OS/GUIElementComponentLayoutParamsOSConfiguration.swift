//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct GUIElementComponentLayoutParamsOSConfiguration:
    Hashable {
    
    let isPreferred: Bool
    
    public init(
        isPreferred: Bool
    ) {
        self.isPreferred = isPreferred
    }
}
