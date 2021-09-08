//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol DevUIComponentPalettsInterface:
    SystemUIComponentPalettsInterface
where
    SystemUIElementColorPalette
        : DevUIElementColorPaletteInterface,
    SystemUIElementFontPalette
        : DevUIElementFontPaletteInterface,
    SystemUIElementComponentConstantPalette
        : DevUIElementComponentConstantPaletteInterface {}
