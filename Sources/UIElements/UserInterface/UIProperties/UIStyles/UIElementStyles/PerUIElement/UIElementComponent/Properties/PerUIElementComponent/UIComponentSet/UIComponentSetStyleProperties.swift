//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentSetStyleProperties: UIElementComponentStyleProperties where
    UIElementComponentStylePropertiesSystemLookType: UIComponentSetStylePropertiesLook,
    UIElementComponentStylePropertiesLookParamsType: UIComponentSetStylePropertiesLookParams,
    UIElementComponentStylePropertiesLayoutParamsType: UIComponentSetStylePropertiesLayoutParams {}
