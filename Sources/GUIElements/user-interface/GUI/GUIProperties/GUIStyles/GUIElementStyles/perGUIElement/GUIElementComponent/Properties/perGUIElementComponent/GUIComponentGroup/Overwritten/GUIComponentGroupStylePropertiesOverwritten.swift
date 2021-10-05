//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
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
