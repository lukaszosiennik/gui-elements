//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct PlaceholderUIComponentStyleProperties: UIComponentStyleProperties {
    
    public let look: PlaceholderUIComponentStylePropertiesLook?
    public let lookParams: EmptyUIElementComponentStylePropertiesLookParams?
    public let layoutParams: PlaceholderUIComponentStylePropertiesLayoutParams?
    
    public init(look: PlaceholderUIComponentStylePropertiesLook?, lookParams: EmptyUIElementComponentStylePropertiesLookParams?, layoutParams: PlaceholderUIComponentStylePropertiesLayoutParams?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
