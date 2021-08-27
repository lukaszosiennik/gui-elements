//
//  Created by Łukasz Osiennik on 23/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum UIElementComponentStylePropertiesLookParamsType<
    UIElementComponentStylePropertiesLookParamsType: UIElementComponentStylePropertiesLookParams> {
    
    case os
    case system(_ lookParams: UIElementComponentStylePropertiesLookParamsType)
}
