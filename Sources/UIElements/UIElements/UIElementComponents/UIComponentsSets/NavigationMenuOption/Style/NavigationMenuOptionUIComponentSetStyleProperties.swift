//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuOptionUIComponentSetStyleProperties: UIComponentSetStyleProperties {
    
    public var look: NavigationMenuOptionUIComponentSetStylePropertiesLook
    public var layoutParams: NavigationMenuOptionUIComponentSetStylePropertiesLayoutParams
    
    public init(look: NavigationMenuOptionUIComponentSetStylePropertiesLook, layoutParams: NavigationMenuOptionUIComponentSetStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
