//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentGroupStylePropertiesLook:
    GUIElementComponentStylePropertiesLook
where
    OSLook
        : GUIComponentGroupStylePropertiesOSLook,
    SystemLook
        : GUIComponentGroupStylePropertiesSystemLook {}
