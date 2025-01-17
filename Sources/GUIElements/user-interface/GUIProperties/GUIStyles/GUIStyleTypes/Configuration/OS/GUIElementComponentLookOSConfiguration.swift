//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct GUIElementComponentLookOSConfiguration:
    Hashable {

    let isUserFriendly: Bool

    public init(
        isUserFriendly: Bool
    ) {
        self.isUserFriendly = isUserFriendly
    }
}
