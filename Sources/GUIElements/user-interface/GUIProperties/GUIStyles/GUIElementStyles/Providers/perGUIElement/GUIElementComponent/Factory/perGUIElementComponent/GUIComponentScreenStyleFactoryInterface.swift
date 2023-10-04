//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentScreenStyleFactoryInterface:
    GUIElementComponentTypeStyleFactoryInterface {
    
    func information() -> GUIElementComponentStyle<
        InformationGUIComponentScreenStyleProperties
    >
    func navigationMenu() -> GUIElementComponentStyle<
        NavigationMenuGUIComponentScreenStyleProperties
    >
}
