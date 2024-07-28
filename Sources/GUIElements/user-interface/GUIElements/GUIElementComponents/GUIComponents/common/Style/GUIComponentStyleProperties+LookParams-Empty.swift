//
//  Created by Łukasz Osiennik on 25/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

extension GUIComponentStyleProperties
where
    LookParams
        == EmptyGUIComponentStylePropertiesLookParams {
    
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
