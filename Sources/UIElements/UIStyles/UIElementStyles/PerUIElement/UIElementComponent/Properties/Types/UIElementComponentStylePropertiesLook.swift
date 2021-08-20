//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStylePropertiesLook: UIElementStylePropertiesLook, UIElementComponentStylePropertiesLookUserFriendlyInterface {
    
    associatedtype UIElementComponentStylePropertiesOverwrittenLookType: UIElementComponentStylePropertiesOverwrittenLook

    init(look: Self, overwrittenBy newLook: UIElementComponentStylePropertiesOverwrittenLookType?)
}

extension UIElementComponentStylePropertiesLook {
    
    public var isUserFriendly: Bool {
        return true
    }
}
