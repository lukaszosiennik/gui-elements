//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIComponentScreenPalettsInterface:
    SystemUIElementPalettsInterface {
    
    typealias ColorPalette =
        SystemUIElementColorPalette.UIElementComponent.UIComponentScreen
    typealias FontPalette =
        SystemUIElementFontPalette.UIElementComponent.UIComponentScreen
    typealias ConstantPalette =
        SystemUIElementComponentConstantPalette.UIElementComponent.UIComponentScreen
}
