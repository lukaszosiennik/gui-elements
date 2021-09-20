//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol DevUIElementComponentFontPaletteInterface:
    SystemUIElementComponentFontPaletteInterface
where
    UIElementComponent.UIComponent
        : DevUIPalette,
    UIElementComponent.UIComponentSet
        : DevUIPalette,
    UIElementComponent.UIComponentGroup
        : DevUIPalette,
    UIElementComponent.UIComponentScreen
        : DevUIPalette {}
