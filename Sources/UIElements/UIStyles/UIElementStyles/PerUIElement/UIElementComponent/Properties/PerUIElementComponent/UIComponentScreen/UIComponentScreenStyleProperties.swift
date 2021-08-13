//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentScreenStyleProperties: UIElementComponentStyleProperties where
    UIElementComponentStylePropertiesLookType: UIComponentScreenStylePropertiesLook,
    UIElementComponentStylePropertiesLookParamsType: UIComponentScreenStylePropertiesLookParams,
    UIElementComponentStylePropertiesLayoutParamsType: UIComponentScreenStylePropertiesLayoutParams {}
