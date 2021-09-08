//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol AppUIElementFontPaletteInterface:
    SystemUIElementFontPaletteInterface
where
    UIElementComponent.UIComponent
        : AppUIPalette,
    UIElementComponent.UIComponentSet
        : AppUIPalette,
    UIElementComponent.UIComponentGroup
        : AppUIPalette,
    UIElementComponent.UIComponentScreen
        : AppUIPalette {}
