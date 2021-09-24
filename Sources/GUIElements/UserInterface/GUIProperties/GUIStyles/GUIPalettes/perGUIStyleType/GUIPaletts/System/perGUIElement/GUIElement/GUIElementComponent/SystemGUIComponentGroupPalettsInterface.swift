//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemGUIComponentGroupPalettsInterface:
    SystemGUIElementPalettsInterface {
    
    typealias ColorPalette =
        SystemGUIElementColorPalette.GUIElementComponent.GUIComponentGroup
    typealias FontPalette =
        SystemGUIElementFontPalette.GUIElementComponent.GUIComponentGroup
    typealias ConstantPalette =
        SystemGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentGroup
}
