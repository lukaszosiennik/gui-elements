//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
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
