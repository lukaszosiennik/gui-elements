//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentGroupStyleProperties: UIComponentGroupStyleProperties {
    
    public var look: NavigationMenuUIComponentGroupStylePropertiesLook
    public var layoutParams: NavigationMenuUIComponentGroupStylePropertiesLayoutParams
    
    public init(look: NavigationMenuUIComponentGroupStylePropertiesLook, layoutParams: NavigationMenuUIComponentGroupStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
