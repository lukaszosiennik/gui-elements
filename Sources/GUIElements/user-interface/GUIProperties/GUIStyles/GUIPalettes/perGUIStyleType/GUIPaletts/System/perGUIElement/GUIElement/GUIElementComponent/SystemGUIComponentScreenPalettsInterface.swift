//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol SystemGUIComponentScreenPalettsInterface:
    SystemGUIElementPalettsInterface {
    
    typealias ColorPalette =
        GUIElementColorPalette.GUIElementComponent.GUIComponentScreen
    typealias FontPalette =
        GUIElementFontPalette.GUIElementComponent.GUIComponentScreen
    typealias ConstantPalette =
        GUIElementComponentConstantPalette.GUIElementComponent.GUIComponentScreen
}
