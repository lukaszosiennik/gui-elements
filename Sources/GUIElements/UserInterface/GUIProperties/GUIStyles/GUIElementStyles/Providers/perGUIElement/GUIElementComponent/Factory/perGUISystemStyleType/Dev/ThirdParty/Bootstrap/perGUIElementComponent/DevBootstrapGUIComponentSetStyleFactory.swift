//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapGUIComponentSetStyleFactory:
    GUIComponentSetTypeStyleFactory<
        DevBootstrapGUIComponentSetPaletts
    >,
    GUIComponentSetStyleFactoryInterface {
    
    public func navigationMenuOption() -> GUIElementComponentStyle<
        NavigationMenuOptionGUIComponentSetStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
