//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol AppGUIElementComponentFontPaletteInterface:
    SystemGUIElementComponentFontPaletteInterface
where
    GUIElementComponent.GUIComponent
        : AppGUIPaletteInterface,
    GUIElementComponent.GUIComponentSet
        : AppGUIPaletteInterface,
    GUIElementComponent.GUIComponentGroup
        : AppGUIPaletteInterface,
    GUIElementComponent.GUIComponentScreen
        : AppGUIPaletteInterface {}
