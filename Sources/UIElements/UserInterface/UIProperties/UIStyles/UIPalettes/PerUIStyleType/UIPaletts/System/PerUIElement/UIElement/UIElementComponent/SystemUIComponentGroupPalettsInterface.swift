//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIComponentGroupPalettsInterface:
    SystemUIElementPalettsInterface {
    
    typealias ColorPalette = SystemUIElementColorPalette.UIElementComponent.UIComponentGroup
    typealias FontPalette = SystemUIElementFontPalette.UIElementComponent.UIComponentGroup
    typealias ConstantPalette = SystemUIElementComponentConstantPalette.UIElementComponent.UIComponentGroup
}
