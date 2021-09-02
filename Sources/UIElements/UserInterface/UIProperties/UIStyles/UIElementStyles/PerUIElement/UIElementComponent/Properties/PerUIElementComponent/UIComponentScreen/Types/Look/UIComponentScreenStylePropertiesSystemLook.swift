//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentScreenStylePropertiesSystemLook:
    UIElementComponentStylePropertiesSystemLook
where
    UIElementComponentStylePropertiesOverwrittenLookType:
        UIComponentScreenStylePropertiesOverwrittenLook {}

extension UIComponentScreenStylePropertiesSystemLook {
    
    public init(
        look: Self,
        overwrittenBy newLook: EmptyUIComponentScreenStylePropertiesOverwrittenLook?
    ) {
        self = look
    }
}
