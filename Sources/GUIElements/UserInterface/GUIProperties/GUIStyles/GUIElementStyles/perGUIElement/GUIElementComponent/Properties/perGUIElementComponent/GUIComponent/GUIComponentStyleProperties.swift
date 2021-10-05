//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentStyleProperties:
    GUIElementComponentStyleProperties
where
    Look
        : GUIComponentStylePropertiesLook,
    LookParams
        : GUIComponentStylePropertiesLookParams,
    LayoutParams
        : GUIComponentStylePropertiesLayoutParams {}