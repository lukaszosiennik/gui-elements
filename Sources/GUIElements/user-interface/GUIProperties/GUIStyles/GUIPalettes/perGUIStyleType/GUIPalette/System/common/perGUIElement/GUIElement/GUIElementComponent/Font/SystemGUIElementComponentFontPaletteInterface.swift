//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemGUIElementComponentFontPaletteInterface:
    SystemGUIElementPaletteInterface
where
    GUIElementComponent.GUIComponent
        : GUIElementComponentFontPaletteInterface,
    GUIElementComponent.GUIComponentSet
        : GUIElementComponentFontPaletteInterface,
    GUIElementComponent.GUIComponentGroup
        : GUIElementComponentFontPaletteInterface,
    GUIElementComponent.GUIComponentScreen
        : GUIElementComponentFontPaletteInterface {}
