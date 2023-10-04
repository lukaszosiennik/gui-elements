//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

extension GUIComponentGroupStylePropertiesSystemLook
where
    OverwrittenLook
        == EmptyGUIComponentGroupStylePropertiesOverwrittenLook {
    
    public init(
        look: Self,
        overwrittenBy newLook: EmptyGUIComponentGroupStylePropertiesOverwrittenLook?
    ) {
        self = look
    }
}
