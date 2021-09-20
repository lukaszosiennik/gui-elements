//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIElementComponentFontPaletteInterface:
    SystemUIElementPaletteInterface
where
    UIElementComponent.UIComponent
        : UIElementComponentFontPalette,
    UIElementComponent.UIComponentSet
        : UIElementComponentFontPalette,
    UIElementComponent.UIComponentGroup
        : UIElementComponentFontPalette,
    UIElementComponent.UIComponentScreen
        : UIElementComponentFontPalette {}
