//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentStylePropertiesOverwritten:
    GUIElementComponentStylePropertiesOverwritten
where
    GUIElementComponentStylePropertiesOverwrittenLookType
        : GUIComponentStylePropertiesOverwrittenLook,
    GUIElementComponentStylePropertiesOverwrittenLookParamsType
        : GUIComponentStylePropertiesOverwrittenLookParams,
    GUIElementComponentStylePropertiesOverwrittenLayoutParamsType
        : GUIComponentStylePropertiesOverwrittenLayoutParams {}
