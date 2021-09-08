//
//  Created by Łukasz Osiennik on 07/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIElementPalettsInterface:
    UIElementPalettsInterface {
        
    associatedtype SystemUIElementColorPalette:
        SystemUIElementColorPaletteInterface
    
    associatedtype SystemUIElementFontPalette:
        SystemUIElementFontPaletteInterface
    
    associatedtype SystemUIElementComponentConstantPalette:
        SystemUIElementComponentConstantPaletteInterface
}
