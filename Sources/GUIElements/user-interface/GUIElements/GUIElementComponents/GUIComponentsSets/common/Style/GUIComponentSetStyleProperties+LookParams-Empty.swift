//
//  Created by Łukasz Osiennik on 25/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

extension GUIComponentSetStyleProperties
where
    LookParams
        == EmptyGUIComponentSetStylePropertiesLookParams {
    
    public init(
        lookType: GUIElementComponentStylePropertiesLookType<
            Look.OSLook,
            Look.SystemLook
        >,
        layoutParams: LayoutParams?
    ) {
        self = .init(
            lookType: lookType,
            lookParams: .init(),
            layoutParams: layoutParams
        )
    }
}
