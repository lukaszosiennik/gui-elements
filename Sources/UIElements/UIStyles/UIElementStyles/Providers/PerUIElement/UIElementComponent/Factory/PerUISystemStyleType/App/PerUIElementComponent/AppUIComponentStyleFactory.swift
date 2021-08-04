//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

final class AppUIComponentStyleFactory: UIElementComponentTypeStyleFactory, UIComponentStyleFactoryInterface {
    
    func label() -> UIElementComponentStylePack<LabelUIComponentStyleProperties> {
        return .default(factory: self)
    }
    
    func button() -> UIElementComponentStylePack<ButtonUIComponentStyleProperties> {
        return .default(factory: self)
    }
}
