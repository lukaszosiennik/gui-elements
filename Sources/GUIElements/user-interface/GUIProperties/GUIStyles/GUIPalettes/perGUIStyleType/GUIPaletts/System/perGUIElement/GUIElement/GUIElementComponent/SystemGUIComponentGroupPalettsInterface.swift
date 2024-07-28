//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol SystemGUIComponentGroupPalettsInterface:
    SystemGUIElementPalettsInterface {
    
    typealias ColorPalette =
        GUIElementColorPalette.GUIElementComponent.GUIComponentGroup
    typealias FontPalette =
        GUIElementFontPalette.GUIElementComponent.GUIComponentGroup
    typealias ConstantPalette =
        GUIElementComponentConstantPalette.GUIElementComponent.GUIComponentGroup
}
