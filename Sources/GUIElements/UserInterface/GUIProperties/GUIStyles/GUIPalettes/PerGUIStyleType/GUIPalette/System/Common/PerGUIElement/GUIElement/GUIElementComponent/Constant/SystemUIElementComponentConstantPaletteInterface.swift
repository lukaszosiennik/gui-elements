//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIElementComponentConstantPaletteInterface:
    SystemUIElementPaletteInterface
where
    UIElementComponent.UIComponent
        : UIElementComponentConstantPalette,
    UIElementComponent.UIComponentSet
        : UIElementComponentConstantPalette,
    UIElementComponent.UIComponentGroup
        : UIElementComponentConstantPalette,
    UIElementComponent.UIComponentScreen
        : UIElementComponentConstantPalette {}
