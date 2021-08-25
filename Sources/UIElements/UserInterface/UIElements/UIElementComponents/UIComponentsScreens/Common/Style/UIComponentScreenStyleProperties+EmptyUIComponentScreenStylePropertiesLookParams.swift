//
//  Created by Łukasz Osiennik on 25/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension UIComponentScreenStyleProperties where
    UIElementComponentStylePropertiesLookParamsType == EmptyUIComponentScreenStylePropertiesLookParams {
    
    public init(lookSort: UIElementComponentStylePropertiesLookSort<OSUIElementComponentStylePropertiesLookType, UIElementComponentStylePropertiesLookType>, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?) {
        self = .init(
            lookSort: lookSort,
            lookParams: .init(),
            layoutParams: layoutParams
        )
    }
}
