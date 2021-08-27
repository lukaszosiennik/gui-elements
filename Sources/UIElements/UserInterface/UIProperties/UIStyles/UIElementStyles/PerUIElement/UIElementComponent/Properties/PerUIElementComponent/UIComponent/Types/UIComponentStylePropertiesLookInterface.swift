//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentStylePropertiesLookInterface: UIElementComponentStylePropertiesLookInterface where
    UIElementComponentStylePropertiesOSLookType: UIComponentStylePropertiesOSLook,
    UIElementComponentStylePropertiesSystemLookType: UIComponentStylePropertiesSystemLook {}
