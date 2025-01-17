//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol SystemGUIComponentSetPalettsInterface:
    SystemGUIElementPalettsInterface {
    
    typealias ColorPalette =
        GUIElementColorPalette.GUIElementComponent.GUIComponentSet
    typealias FontPalette =
        GUIElementFontPalette.GUIElementComponent.GUIComponentSet
    typealias ConstantPalette =
        GUIElementComponentConstantPalette.GUIElementComponent.GUIComponentSet
}
