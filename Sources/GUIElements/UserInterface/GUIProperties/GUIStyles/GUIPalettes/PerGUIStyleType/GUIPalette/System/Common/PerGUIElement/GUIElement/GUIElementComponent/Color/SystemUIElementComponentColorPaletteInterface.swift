//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIElementComponentColorPaletteInterface:
    SystemUIElementPaletteInterface
where
    UIElementComponent.UIComponent
        : UIElementComponentColorPalette,
    UIElementComponent.UIComponentSet
        : UIElementComponentColorPalette,
    UIElementComponent.UIComponentGroup
        : UIElementComponentColorPalette,
    UIElementComponent.UIComponentScreen
        : UIElementComponentColorPalette {}
