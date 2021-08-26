//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum UIElementComponentStylePropertiesLookSort<
    UIElementComponentStylePropertiesOSLookType: UIElementComponentStylePropertiesOSLook,
    UIElementComponentStylePropertiesLookType: UIElementComponentStylePropertiesLook
> {
    
    case os(_ look: UIElementComponentStylePropertiesOSLookType)
    case system(_ look: UIElementComponentStylePropertiesLookType)
}
