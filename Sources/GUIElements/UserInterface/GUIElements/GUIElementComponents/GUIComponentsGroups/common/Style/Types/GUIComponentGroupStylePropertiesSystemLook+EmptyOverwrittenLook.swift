//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension GUIComponentGroupStylePropertiesSystemLook
where
    GUIElementComponentStylePropertiesOverwrittenLookType
        == EmptyGUIComponentGroupStylePropertiesOverwrittenLook {
    
    public init(
        look: Self,
        overwrittenBy newLook: EmptyGUIComponentGroupStylePropertiesOverwrittenLook?
    ) {
        self = look
    }
}
