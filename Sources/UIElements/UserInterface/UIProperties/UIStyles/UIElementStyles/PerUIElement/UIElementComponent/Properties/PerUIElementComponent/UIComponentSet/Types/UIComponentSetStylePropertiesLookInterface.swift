//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentSetStylePropertiesLookInterface:
    UIElementComponentStylePropertiesLookInterface
where
    UIElementComponentStylePropertiesOSLookType:
        UIComponentSetStylePropertiesOSLook,
    UIElementComponentStylePropertiesSystemLookType:
        UIComponentSetStylePropertiesSystemLook {}
