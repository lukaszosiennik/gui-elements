//
//  Created by Łukasz Osiennik on 23/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum GUIElementComponentStylePropertiesLookParamsType<
    GUIElementComponentStylePropertiesLookParamsType:
        GUIElementComponentStylePropertiesLookParams
> {
    
    case os
    case system(_ lookParams: GUIElementComponentStylePropertiesLookParamsType)
}
