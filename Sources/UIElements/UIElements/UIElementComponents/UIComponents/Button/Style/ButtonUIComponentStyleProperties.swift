//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct ButtonUIComponentStyleProperties: UIComponentStyleProperties {
    
    public let look: ButtonUIComponentStylePropertiesLook?
    public let lookParams: EmptyUIElementComponentStylePropertiesLookParams?
    public let layoutParams: ButtonUIComponentStylePropertiesLayoutParams?
    
    public init(look: ButtonUIComponentStylePropertiesLook?, lookParams: EmptyUIElementComponentStylePropertiesLookParams?, layoutParams: ButtonUIComponentStylePropertiesLayoutParams?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
