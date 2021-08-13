//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CardUIComponentGroupStyleProperties: UIComponentGroupStyleProperties {
    
    public let look: CardUIComponentGroupStylePropertiesLook?
    public let lookParams: EmptyUIElementComponentStylePropertiesLookParams?
    public let layoutParams: CardUIComponentGroupStylePropertiesLayoutParams?
    
    public init(look: CardUIComponentGroupStylePropertiesLook?, lookParams: EmptyUIElementComponentStylePropertiesLookParams?, layoutParams: CardUIComponentGroupStylePropertiesLayoutParams?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
