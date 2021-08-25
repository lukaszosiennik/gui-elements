//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol OSUIElementComponentStylePropertiesLook: Hashable {
    
    var isUserFriendly: Bool { get }
    
    init(isUserFriendly: Bool)
}

extension OSUIElementComponentStylePropertiesLook {
    
    public func toBasic() -> BasicOSUIElementComponentStylePropertiesLook {
        return .init(
            isUserFriendly: isUserFriendly
        )
    }
}

public struct BasicOSUIElementComponentStylePropertiesLook: OSUIElementComponentStylePropertiesLook {

    public let isUserFriendly: Bool

    public init(isUserFriendly: Bool) {
        self.isUserFriendly = isUserFriendly
    }
}
