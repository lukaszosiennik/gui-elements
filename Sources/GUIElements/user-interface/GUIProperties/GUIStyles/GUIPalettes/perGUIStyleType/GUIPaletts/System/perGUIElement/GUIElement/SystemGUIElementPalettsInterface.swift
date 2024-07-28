//
//  Created by Łukasz Osiennik on 07/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol SystemGUIElementPalettsInterface:
    GUIElementPalettsInterface {
        
    associatedtype GUIElementColorPalette:
        SystemGUIElementComponentColorPaletteInterface
    
    associatedtype GUIElementFontPalette:
        SystemGUIElementComponentFontPaletteInterface
    
    associatedtype GUIElementComponentConstantPalette:
        SystemGUIElementComponentConstantPaletteInterface
}
