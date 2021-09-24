//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum GUIElementComponentStylePropertiesLookType<
    GUIElementComponentStylePropertiesOSLookType:
        GUIElementComponentStylePropertiesOSLook,
    GUIElementComponentStylePropertiesSystemLookType:
        GUIElementComponentStylePropertiesSystemLook
> {
    
    case os(_ look: GUIElementComponentStylePropertiesOSLookType)
    case system(_ look: GUIElementComponentStylePropertiesSystemLookType)
}
