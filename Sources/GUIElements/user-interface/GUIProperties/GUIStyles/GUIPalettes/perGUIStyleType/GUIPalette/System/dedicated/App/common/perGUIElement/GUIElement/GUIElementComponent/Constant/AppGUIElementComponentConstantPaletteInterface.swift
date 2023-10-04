//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol AppGUIElementComponentConstantPaletteInterface:
    SystemGUIElementComponentConstantPaletteInterface
where
    GUIElementComponent.GUIComponent
        : AppGUIPaletteInterface,
    GUIElementComponent.GUIComponentSet
        : AppGUIPaletteInterface,
    GUIElementComponent.GUIComponentGroup
        : AppGUIPaletteInterface,
    GUIElementComponent.GUIComponentScreen
        : AppGUIPaletteInterface {}
