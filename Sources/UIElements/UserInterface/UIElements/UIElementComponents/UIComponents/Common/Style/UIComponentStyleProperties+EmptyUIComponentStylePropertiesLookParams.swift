//
//  Created by Łukasz Osiennik on 25/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension UIComponentStyleProperties where
    UIElementComponentStylePropertiesLookParamsType == EmptyUIComponentStylePropertiesLookParams {
    
    public init(lookSort: UIElementComponentStylePropertiesLookSort<UIElementComponentStylePropertiesOSLookType, UIElementComponentStylePropertiesLookType>, layoutParams: UIElementComponentStylePropertiesLayoutParamsType?) {
        self = .init(
            lookSort: lookSort,
            lookParams: .init(),
            layoutParams: layoutParams
        )
    }
}
