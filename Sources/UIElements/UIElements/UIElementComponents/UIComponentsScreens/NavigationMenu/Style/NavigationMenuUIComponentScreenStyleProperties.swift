//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentScreenStyleProperties: UIComponentScreenStyleProperties {
    
    public let look: NavigationMenuUIComponentScreenStylePropertiesLook?
    public let lookParams: EmptyUIElementComponentStylePropertiesLookParams?
    public let layoutParams: NavigationMenuUIComponentScreenStylePropertiesLayoutParams?
    
    public init(look: NavigationMenuUIComponentScreenStylePropertiesLook?, lookParams: EmptyUIElementComponentStylePropertiesLookParams?, layoutParams: NavigationMenuUIComponentScreenStylePropertiesLayoutParams?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
