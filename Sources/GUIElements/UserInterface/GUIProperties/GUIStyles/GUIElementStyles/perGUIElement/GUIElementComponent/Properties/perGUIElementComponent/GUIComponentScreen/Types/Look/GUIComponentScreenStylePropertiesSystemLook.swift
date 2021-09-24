//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentScreenStylePropertiesSystemLook:
    GUIElementComponentStylePropertiesSystemLook
where
    GUIElementComponentStylePropertiesOverwrittenLookType
        : GUIComponentScreenStylePropertiesOverwrittenLook {}

extension GUIComponentScreenStylePropertiesSystemLook {
    
    public init(
        look: Self,
        overwrittenBy newLook: EmptyGUIComponentScreenStylePropertiesOverwrittenLook?
    ) {
        self = look
    }
}
