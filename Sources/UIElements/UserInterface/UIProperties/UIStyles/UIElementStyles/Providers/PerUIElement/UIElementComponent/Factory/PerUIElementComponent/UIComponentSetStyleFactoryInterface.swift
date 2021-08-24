//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentSetStyleFactoryInterface: UIElementComponentTypeStyleFactoryInterface {
    
    func navigationMenuOption() -> UIElementComponentStyle<NavigationMenuOptionUIComponentSetStyleProperties>
}
