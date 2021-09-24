//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemGUIComponentPalettsInterface:
    SystemGUIElementPalettsInterface {
    
    typealias ColorPalette =
        SystemGUIElementColorPalette.GUIElementComponent.GUIComponent
    typealias FontPalette =
        SystemGUIElementFontPalette.GUIElementComponent.GUIComponent
    typealias ConstantPalette =
        SystemGUIElementComponentConstantPalette.GUIElementComponent.GUIComponent
}
