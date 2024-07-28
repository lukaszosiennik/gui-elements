//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol DevGUIComponentGroupPalettsInterface:
    SystemGUIComponentGroupPalettsInterface
where
    GUIElementColorPalette
        : DevGUIElementComponentColorPaletteInterface,
    GUIElementFontPalette
        : DevGUIElementComponentFontPaletteInterface,
    GUIElementComponentConstantPalette
        : DevGUIElementComponentConstantPaletteInterface {}
