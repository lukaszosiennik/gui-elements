//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIElementColorPaletteInterface:
    SystemUIElementPaletteInterface
where
    UIElementComponent.UIComponent
        : UIColorPalette,
    UIElementComponent.UIComponentSet
        : UIColorPalette,
    UIElementComponent.UIComponentGroup
        : UIColorPalette,
    UIElementComponent.UIComponentScreen
        : UIColorPalette {}
