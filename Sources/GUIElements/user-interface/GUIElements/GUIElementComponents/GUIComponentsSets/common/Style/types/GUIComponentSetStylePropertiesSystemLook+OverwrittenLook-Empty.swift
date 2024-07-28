//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

extension GUIComponentSetStylePropertiesSystemLook
where
    OverwrittenLook
        == EmptyGUIComponentSetStylePropertiesOverwrittenLook {
    
    public init(
        look: Self,
        overwrittenBy newLook: EmptyGUIComponentSetStylePropertiesOverwrittenLook?
    ) {
        self = look
    }
}
