//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentStyleProperties: UIElementComponentStyleProperties where
    UIElementComponentStylePropertiesLookType: UIComponentStylePropertiesLook,
    UIElementComponentStylePropertiesLookParamsType: UIComponentStylePropertiesLookParams,
    UIElementComponentStylePropertiesLayoutParamsType: UIComponentStylePropertiesLayoutParams {}