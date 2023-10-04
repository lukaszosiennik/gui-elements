//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentGroupStylePropertiesOverwritten:
    GUIElementComponentStylePropertiesOverwritten
where
    Look
        : GUIComponentGroupStylePropertiesOverwrittenLook,
    LookParams
        : GUIComponentGroupStylePropertiesOverwrittenLookParams,
    LayoutParams
        : GUIComponentGroupStylePropertiesOverwrittenLayoutParams {}
