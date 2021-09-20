//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemGUIComponentScreenPalettsInterface:
    SystemGUIElementPalettsInterface {
    
    typealias ColorPalette =
        SystemGUIElementColorPalette.GUIElementComponent.GUIComponentScreen
    typealias FontPalette =
        SystemGUIElementFontPalette.GUIElementComponent.GUIComponentScreen
    typealias ConstantPalette =
        SystemGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentScreen
}
