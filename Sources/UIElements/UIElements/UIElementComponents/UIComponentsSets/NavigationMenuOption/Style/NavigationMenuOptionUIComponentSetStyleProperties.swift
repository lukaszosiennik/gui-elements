//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuOptionUIComponentSetStyleProperties: UIComponentSetStyleProperties {
    
    public let look: NavigationMenuOptionUIComponentSetStylePropertiesLook?
    public let lookParams: EmptyUIElementComponentStylePropertiesLookParams?
    public let layoutParams: NavigationMenuOptionUIComponentSetStylePropertiesLayoutParams?
    
    public init(look: NavigationMenuOptionUIComponentSetStylePropertiesLook?, lookParams: EmptyUIElementComponentStylePropertiesLookParams?, layoutParams: NavigationMenuOptionUIComponentSetStylePropertiesLayoutParams?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
