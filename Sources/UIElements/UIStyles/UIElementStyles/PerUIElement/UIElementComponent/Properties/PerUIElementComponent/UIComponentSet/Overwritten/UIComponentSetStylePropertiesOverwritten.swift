//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentSetStylePropertiesOverwritten: UIElementComponentStyleProperties where
    UIElementComponentStylePropertiesLookType: UIComponentSetStylePropertiesOverwrittenLook,
    UIElementComponentStylePropertiesLookParamsType: UIComponentSetStylePropertiesOverwrittenLookParams,
    UIElementComponentStylePropertiesLayoutParamsType: UIComponentSetStylePropertiesOverwrittenLayoutParams {}
