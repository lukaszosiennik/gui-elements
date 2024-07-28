//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public protocol GUIComponentSetStyleFactoryInterface:
    GUIElementComponentTypeStyleFactoryInterface {
    
    func navigationMenuOption() -> GUIElementComponentStyle<
        NavigationMenuOptionGUIComponentSetStyleProperties
    >
}
