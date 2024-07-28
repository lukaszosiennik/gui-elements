//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol SystemGUIElementComponentColorPaletteInterface:
    SystemGUIElementPaletteInterface
where
    GUIElementComponent.GUIComponent
        : GUIElementComponentColorPaletteInterface,
    GUIElementComponent.GUIComponentSet
        : GUIElementComponentColorPaletteInterface,
    GUIElementComponent.GUIComponentGroup
        : GUIElementComponentColorPaletteInterface,
    GUIElementComponent.GUIComponentScreen
        : GUIElementComponentColorPaletteInterface {}
