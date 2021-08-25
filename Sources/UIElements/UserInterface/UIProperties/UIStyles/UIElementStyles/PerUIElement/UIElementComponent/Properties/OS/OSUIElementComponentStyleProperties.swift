//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct OSUIElementComponentStyleProperties: Hashable {
    
    let look: BasicOSUIElementComponentStylePropertiesLook
    let layoutParams: OSUIElementComponentStylePropertiesLayoutParams
    
    public init(look: BasicOSUIElementComponentStylePropertiesLook, layoutParams: OSUIElementComponentStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}

extension OSUIElementComponentStyleProperties {
    
    var isUserFriendly: Bool {
        return look.isUserFriendly
    }
    
    var isPreferredLayoutParams: Bool {
        return layoutParams.isPreferred
    }
}
