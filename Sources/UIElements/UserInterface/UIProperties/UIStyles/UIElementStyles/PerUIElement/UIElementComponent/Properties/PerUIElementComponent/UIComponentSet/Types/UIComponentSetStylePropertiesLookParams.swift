//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentSetStylePropertiesLookParams: UIElementComponentStylePropertiesLookParams where
    UIElementComponentStylePropertiesOverwrittenLookParamsType: UIComponentSetStylePropertiesOverwrittenLookParams,
    DefaultConstantPalette == DefaultUIElementComponentConstantPalette {}
