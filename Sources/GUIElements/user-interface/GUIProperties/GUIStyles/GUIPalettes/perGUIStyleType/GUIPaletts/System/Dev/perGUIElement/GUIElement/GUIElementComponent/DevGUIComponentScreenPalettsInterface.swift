//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol DevGUIComponentScreenPalettsInterface:
    SystemGUIComponentScreenPalettsInterface
where
    GUIElementColorPalette
        : DevGUIElementComponentColorPaletteInterface,
    GUIElementFontPalette
        : DevGUIElementComponentFontPaletteInterface,
    GUIElementComponentConstantPalette
        : DevGUIElementComponentConstantPaletteInterface {}
