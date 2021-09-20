//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol DevGUIElementComponentColorPaletteInterface:
    SystemGUIElementComponentColorPaletteInterface
where
    GUIElementComponent.GUIComponent
        : DevGUIPalette,
    GUIElementComponent.GUIComponentSet
        : DevGUIPalette,
    GUIElementComponent.GUIComponentGroup
        : DevGUIPalette,
    GUIElementComponent.GUIComponentScreen
        : DevGUIPalette {}
