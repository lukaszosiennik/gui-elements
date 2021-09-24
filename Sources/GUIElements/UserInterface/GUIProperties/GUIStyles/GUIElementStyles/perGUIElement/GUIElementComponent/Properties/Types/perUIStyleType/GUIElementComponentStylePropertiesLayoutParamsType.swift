//
//  Created by Łukasz Osiennik on 23/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum GUIElementComponentStylePropertiesLayoutParamsType<
    GUIElementComponentStylePropertiesLayoutParamsType:
        GUIElementComponentStylePropertiesLayoutParams
> {
    
    case os
    case system(_ lookParams: GUIElementComponentStylePropertiesLayoutParamsType)
}
