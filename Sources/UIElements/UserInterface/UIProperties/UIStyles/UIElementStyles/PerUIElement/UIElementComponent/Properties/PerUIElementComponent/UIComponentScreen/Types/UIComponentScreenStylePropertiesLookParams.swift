//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentScreenStylePropertiesLookParams: UIElementComponentStylePropertiesLookParams where
    UIElementComponentStylePropertiesOverwrittenLookParamsType: UIComponentScreenStylePropertiesOverwrittenLookParams,
    DefaultConstantPalette == DefaultUIElementComponentConstantPalette {}

extension UIComponentScreenStylePropertiesLookParams {
    
    public init?(
        lookParams: Self?,
        overwrittenBy newLookParams: EmptyUIComponentScreenStylePropertiesOverwrittenLookParams?
    ) {
        return nil
    }
}
