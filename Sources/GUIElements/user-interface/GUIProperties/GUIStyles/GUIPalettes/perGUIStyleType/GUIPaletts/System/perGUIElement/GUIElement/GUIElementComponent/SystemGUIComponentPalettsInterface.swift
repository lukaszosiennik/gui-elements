//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemGUIComponentPalettsInterface:
    SystemGUIElementPalettsInterface {
    
    typealias ColorPalette =
        GUIElementColorPalette.GUIElementComponent.GUIComponent
    typealias FontPalette =
        GUIElementFontPalette.GUIElementComponent.GUIComponent
    typealias ConstantPalette =
        GUIElementComponentConstantPalette.GUIElementComponent.GUIComponent
}
