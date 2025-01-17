//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol SystemGUIElementComponentConstantPaletteInterface:
    SystemGUIElementPaletteInterface
where
    GUIElementComponent.GUIComponent
        : GUIElementComponentConstantPaletteInterface,
    GUIElementComponent.GUIComponentSet
        : GUIElementComponentConstantPaletteInterface,
    GUIElementComponent.GUIComponentGroup
        : GUIElementComponentConstantPaletteInterface,
    GUIElementComponent.GUIComponentScreen
        : GUIElementComponentConstantPaletteInterface {}
