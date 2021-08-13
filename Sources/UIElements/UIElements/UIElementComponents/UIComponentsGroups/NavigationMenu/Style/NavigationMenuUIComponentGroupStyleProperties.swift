//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentGroupStyleProperties: UIComponentGroupStyleProperties {
    
    public let look: NavigationMenuUIComponentGroupStylePropertiesLook?
    public let lookParams: EmptyUIElementComponentStylePropertiesLookParams?
    public let layoutParams: NavigationMenuUIComponentGroupStylePropertiesLayoutParams?
    
    public init(look: NavigationMenuUIComponentGroupStylePropertiesLook?, lookParams: EmptyUIElementComponentStylePropertiesLookParams?, layoutParams: NavigationMenuUIComponentGroupStylePropertiesLayoutParams?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
