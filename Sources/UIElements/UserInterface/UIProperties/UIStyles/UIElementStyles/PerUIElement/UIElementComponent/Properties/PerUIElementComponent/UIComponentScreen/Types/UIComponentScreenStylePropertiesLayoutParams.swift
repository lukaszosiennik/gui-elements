//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentScreenStylePropertiesLayoutParams:
    UIElementComponentStylePropertiesLayoutParams
where
    UIElementComponentStylePropertiesOverwrittenLayoutParamsType: UIComponentScreenStylePropertiesOverwrittenLayoutParams,
    DefaultConstantPalette == DefaultUIElementComponentConstantPalette.UIElementComponent.UIComponentScreen {}

extension UIComponentScreenStylePropertiesLayoutParams {
    
    public init?(
        layoutParams: Self?,
        overwrittenBy newLayoutParams: EmptyUIComponentScreenStylePropertiesOverwrittenLayoutParams?
    ) {
        return nil
    }
}
