//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentStylePropertiesLayoutParams:
    GUIElementComponentStylePropertiesLayoutParams
where
    GUIElementComponentStylePropertiesOverwrittenLayoutParamsType
        : GUIComponentStylePropertiesOverwrittenLayoutParams,
    DefaultConstantPalette
        == DefaultGUIElementComponentConstantPalette.GUIElementComponent.GUIComponent {}
