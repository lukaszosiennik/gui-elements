//
//  Created by Łukasz Osiennik on 25/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension UIComponentScreenStyleProperties where
    UIElementComponentStylePropertiesLookParamsType == EmptyUIComponentScreenStylePropertiesLookParams {
    
    public init(lookType: UIElementComponentStylePropertiesLookType<UIElementComponentStylePropertiesOSLookType, UIElementComponentStylePropertiesSystemLookType>, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?) {
        self = .init(
            lookType: lookType,
            lookParams: .init(),
            layoutParams: layoutParams
        )
    }
}
