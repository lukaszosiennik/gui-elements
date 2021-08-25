//
//  Created by Łukasz Osiennik on 25/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol OSUIComponentStylePropertiesLook: OSUIElementComponentStylePropertiesLook {}

public struct BasicOSUIComponentStylePropertiesLook: OSUIComponentStylePropertiesLook {
    
    public let isUserFriendly: Bool

    public init(isUserFriendly: Bool = true) {
        self.isUserFriendly = isUserFriendly
    }
}

public struct ButtonUIComponentOSStylePropertiesLook: OSUIComponentStylePropertiesLook {
    
    public let isUserFriendly: Bool
    
    public let buttonStyleType: ButtonUIComponentOSStyleType
    
    public init(isUserFriendly: Bool = true) {
        self.init(
            isUserFriendly: isUserFriendly,
            buttonStyleType: .default
        )
    }
    
    public init(isUserFriendly: Bool = true, buttonStyleType: ButtonUIComponentOSStyleType) {
        self.isUserFriendly = isUserFriendly
        self.buttonStyleType = buttonStyleType
    }
}
