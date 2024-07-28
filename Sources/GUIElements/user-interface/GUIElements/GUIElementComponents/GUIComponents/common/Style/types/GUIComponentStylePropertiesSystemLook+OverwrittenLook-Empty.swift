//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

extension GUIComponentStylePropertiesSystemLook
where
    OverwrittenLook
        == EmptyGUIComponentStylePropertiesOverwrittenLook {
    
    public init(
        look: Self,
        overwrittenBy newLook: EmptyGUIComponentStylePropertiesOverwrittenLook?
    ) {
        self = look
    }
}
