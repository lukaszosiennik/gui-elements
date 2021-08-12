//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppUIComponentSetStyleFactory: UIElementComponentTypeStyleFactory, UIComponentSetStyleFactoryInterface {
    
    public func navigationMenuOption() -> UIElementComponentStylePack<NavigationMenuOptionUIComponentSetStyleProperties> {
        return .default(factory: self, styleType: styleType)
    }
}
