//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIComponentSetPalettsInterface:
    SystemUIElementPalettsInterface {
    
    typealias ColorPalette = SystemUIElementColorPalette.UIElementComponent.UIComponentSet
    typealias FontPalette = SystemUIElementFontPalette.UIElementComponent.UIComponentSet
    typealias ConstantPalette = SystemUIElementComponentConstantPalette.UIElementComponent.UIComponentSet
}
