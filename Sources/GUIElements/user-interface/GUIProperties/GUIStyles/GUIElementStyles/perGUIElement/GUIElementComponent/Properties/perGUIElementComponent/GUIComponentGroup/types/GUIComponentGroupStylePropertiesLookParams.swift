//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol GUIComponentGroupStylePropertiesLookParams:
    GUIElementComponentStylePropertiesLookParams
where
    OverwrittenLookParams
        : GUIComponentGroupStylePropertiesOverwrittenLookParams,
    DefaultConstantPalette
        == DefaultGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentGroup {}
