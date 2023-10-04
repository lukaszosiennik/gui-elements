//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentScreenStylePropertiesSystemLook:
    GUIElementComponentStylePropertiesSystemLook
where
    OverwrittenLook
        : GUIComponentScreenStylePropertiesOverwrittenLook {}

extension GUIComponentScreenStylePropertiesSystemLook {
    
    public init(
        look: Self,
        overwrittenBy newLook: EmptyGUIComponentScreenStylePropertiesOverwrittenLook?
    ) {
        self = look
    }
}
