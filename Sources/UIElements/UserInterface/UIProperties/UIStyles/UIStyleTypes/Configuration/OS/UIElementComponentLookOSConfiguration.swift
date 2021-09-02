//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIElementComponentLookOSConfiguration:
    Hashable {

    let isUserFriendly: Bool

    public init(
        isUserFriendly: Bool
    ) {
        self.isUserFriendly = isUserFriendly
    }
}
