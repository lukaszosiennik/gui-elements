//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public enum GUIElementComponentStylePropertiesLookType<
    OSLook:
        GUIElementComponentStylePropertiesOSLook,
    SystemLook:
        GUIElementComponentStylePropertiesSystemLook
> {
    
    case os(_ look: OSLook)
    case system(_ look: SystemLook)
}
