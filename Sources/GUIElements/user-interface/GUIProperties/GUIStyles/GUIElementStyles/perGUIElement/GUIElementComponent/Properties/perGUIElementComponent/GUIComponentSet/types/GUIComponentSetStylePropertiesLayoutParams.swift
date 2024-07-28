//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public protocol GUIComponentSetStylePropertiesLayoutParams:
    GUIElementComponentStylePropertiesLayoutParams
where
    OverwrittenLayoutParams
        : GUIComponentSetStylePropertiesOverwrittenLayoutParams,
    DefaultConstantPalette
        == DefaultGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentSet {}
