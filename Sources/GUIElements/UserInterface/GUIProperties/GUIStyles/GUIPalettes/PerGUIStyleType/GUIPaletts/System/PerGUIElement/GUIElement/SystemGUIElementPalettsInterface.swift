//
//  Created by Łukasz Osiennik on 07/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemGUIElementPalettsInterface:
    GUIElementPalettsInterface {
        
    associatedtype SystemGUIElementColorPalette:
        SystemGUIElementComponentColorPaletteInterface
    
    associatedtype SystemGUIElementFontPalette:
        SystemGUIElementComponentFontPaletteInterface
    
    associatedtype SystemGUIElementComponentConstantPalette:
        SystemGUIElementComponentConstantPaletteInterface
}
