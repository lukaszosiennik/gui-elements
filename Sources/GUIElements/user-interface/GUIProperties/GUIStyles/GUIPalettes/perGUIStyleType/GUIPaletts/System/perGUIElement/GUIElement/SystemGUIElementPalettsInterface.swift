//
//  Created by Łukasz Osiennik on 07/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
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
