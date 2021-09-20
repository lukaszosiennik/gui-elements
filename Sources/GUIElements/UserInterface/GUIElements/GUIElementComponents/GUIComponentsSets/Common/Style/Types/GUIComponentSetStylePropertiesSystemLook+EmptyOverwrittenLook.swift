//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension GUIComponentSetStylePropertiesSystemLook
where
    GUIElementComponentStylePropertiesOverwrittenLookType
        == EmptyGUIComponentSetStylePropertiesOverwrittenLook {
    
    public init(
        look: Self,
        overwrittenBy newLook: EmptyGUIComponentSetStylePropertiesOverwrittenLook?
    ) {
        self = look
    }
}
