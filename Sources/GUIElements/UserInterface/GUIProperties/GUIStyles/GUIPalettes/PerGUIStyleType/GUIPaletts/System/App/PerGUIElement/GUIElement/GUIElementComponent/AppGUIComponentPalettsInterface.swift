//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol AppUIComponentPalettsInterface:
    SystemUIComponentPalettsInterface
where
    SystemUIElementColorPalette
        : AppUIElementComponentColorPaletteInterface,
    SystemUIElementFontPalette
        : AppUIElementComponentFontPaletteInterface,
    SystemUIElementComponentConstantPalette
        : AppUIElementComponentConstantPaletteInterface {}
