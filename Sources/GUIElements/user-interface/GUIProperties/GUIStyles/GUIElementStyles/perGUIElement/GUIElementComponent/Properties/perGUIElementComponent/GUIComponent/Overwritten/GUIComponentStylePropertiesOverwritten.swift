//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol GUIComponentStylePropertiesOverwritten:
    GUIElementComponentStylePropertiesOverwritten
where
    Look
        : GUIComponentStylePropertiesOverwrittenLook,
    LookParams
        : GUIComponentStylePropertiesOverwrittenLookParams,
    LayoutParams
        : GUIComponentStylePropertiesOverwrittenLayoutParams {}
