//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemGUIElementComponentColorPaletteInterface:
    SystemGUIElementPaletteInterface
where
    GUIElementComponent.GUIComponent
        : GUIElementComponentColorPalette,
    GUIElementComponent.GUIComponentSet
        : GUIElementComponentColorPalette,
    GUIElementComponent.GUIComponentGroup
        : GUIElementComponentColorPalette,
    GUIElementComponent.GUIComponentScreen
        : GUIElementComponentColorPalette {}
