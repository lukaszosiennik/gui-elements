//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentScreenStylePropertiesOverwritten: UIElementComponentStyleProperties where
    UIElementComponentStylePropertiesLookType: UIComponentScreenStylePropertiesOverwrittenLook,
    UIElementComponentStylePropertiesLookParamsType: UIComponentScreenStylePropertiesOverwrittenLookParams,
    UIElementComponentStylePropertiesLayoutParamsType: UIComponentScreenStylePropertiesOverwrittenLayoutParams {}
