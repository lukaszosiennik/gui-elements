//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentScreenStylePropertiesLook: UIElementComponentStylePropertiesSystemLook where
    UIElementComponentStylePropertiesOverwrittenLookType: UIComponentScreenStylePropertiesOverwrittenLook {}

extension UIComponentScreenStylePropertiesLook {
    
    public init(
        look: Self,
        overwrittenBy newLook: EmptyUIComponentScreenStylePropertiesOverwrittenLook?
    ) {
        self = look
    }
}
