//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentScreenStyleFactoryInterface:
    UIElementComponentTypeStyleFactoryInterface {
    
    func information() -> UIElementComponentStyle<InformationUIComponentScreenStyleProperties>
    func navigationMenu() -> UIElementComponentStyle<NavigationMenuUIComponentScreenStyleProperties>
}
