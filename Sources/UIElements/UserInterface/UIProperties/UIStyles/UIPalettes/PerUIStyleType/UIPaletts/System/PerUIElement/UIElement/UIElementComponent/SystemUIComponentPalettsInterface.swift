//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIComponentPalettsInterface:
    SystemUIElementPalettsInterface {
    
    typealias ColorPalette =
        SystemUIElementColorPalette.UIElementComponent.UIComponent
    typealias FontPalette =
        SystemUIElementFontPalette.UIElementComponent.UIComponent
    typealias ConstantPalette =
        SystemUIElementComponentConstantPalette.UIElementComponent.UIComponent
}
