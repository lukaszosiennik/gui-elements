//
//  Created by Łukasz Osiennik on 25/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension GUIComponentGroupStyleProperties
where
    GUIElementComponentStylePropertiesLookParamsType
        == EmptyGUIComponentGroupStylePropertiesLookParams {
    
    public init(
        lookType: GUIElementComponentStylePropertiesLookType<
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
            GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
        >,
        layoutParams: GUIElementComponentStylePropertiesLayoutParamsType?
    ) {
        self = .init(
            lookType: lookType,
            lookParams: .init(),
            layoutParams: layoutParams
        )
    }
}
