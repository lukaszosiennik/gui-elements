//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol DevGUIElementComponentFontPaletteInterface:
    SystemGUIElementComponentFontPaletteInterface
where
    GUIElementComponent.GUIComponent
        : DevGUIPaletteInterface,
    GUIElementComponent.GUIComponentSet
        : DevGUIPaletteInterface,
    GUIElementComponent.GUIComponentGroup
        : DevGUIPaletteInterface,
    GUIElementComponent.GUIComponentScreen
        : DevGUIPaletteInterface {}
