//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemGUIElementComponentFontPaletteInterface:
    SystemGUIElementPaletteInterface
where
    GUIElementComponent.GUIComponent
        : GUIElementComponentFontPalette,
    GUIElementComponent.GUIComponentSet
        : GUIElementComponentFontPalette,
    GUIElementComponent.GUIComponentGroup
        : GUIElementComponentFontPalette,
    GUIElementComponent.GUIComponentScreen
        : GUIElementComponentFontPalette {}
