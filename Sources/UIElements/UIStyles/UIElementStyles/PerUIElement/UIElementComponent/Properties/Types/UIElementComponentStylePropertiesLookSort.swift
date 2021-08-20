//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum UIElementComponentStylePropertiesLookSort<UIElementComponentStylePropertiesLookType: UIElementComponentStylePropertiesLook> {
    
    case os(_ look: OSUIElementComponentStylePropertiesLook)
    case system(_ look: UIElementComponentStylePropertiesLookType)
}

extension UIElementComponentStylePropertiesLookSort {
    
    public static var os: Self {
        return .os(
            .init(
                isUserFriendly: true
            )
        )
    }
}

extension UIElementComponentStylePropertiesLookSort {
    
    var lookUserFriendly: UIElementComponentStylePropertiesLookUserFriendlyInterface {
        switch self {
        case .os(let look):
            return look
        case .system(let look):
            return look
        }
    }
}
