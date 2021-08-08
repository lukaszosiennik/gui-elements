//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentScreenStyleProperties: UIComponentScreenStyleProperties {
    
    public var look: NavigationMenuUIComponentScreenStylePropertiesLook
    public var layoutParams: NavigationMenuUIComponentScreenStylePropertiesLayoutParams
    
    public init(look: NavigationMenuUIComponentScreenStylePropertiesLook, layoutParams: NavigationMenuUIComponentScreenStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
