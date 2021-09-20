//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemGUIElementComponentConstantPaletteInterface:
    SystemGUIElementPaletteInterface
where
    GUIElementComponent.GUIComponent
        : GUIElementComponentConstantPalette,
    GUIElementComponent.GUIComponentSet
        : GUIElementComponentConstantPalette,
    GUIElementComponent.GUIComponentGroup
        : GUIElementComponentConstantPalette,
    GUIElementComponent.GUIComponentScreen
        : GUIElementComponentConstantPalette {}
