//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentGroupStyleProperties:
    GUIElementComponentStyleProperties
where
    Look
        : GUIComponentGroupStylePropertiesLook,
    LookParams
        : GUIComponentGroupStylePropertiesLookParams,
    LayoutParams
        : GUIComponentGroupStylePropertiesLayoutParams {}
