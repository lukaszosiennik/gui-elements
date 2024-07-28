//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
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
