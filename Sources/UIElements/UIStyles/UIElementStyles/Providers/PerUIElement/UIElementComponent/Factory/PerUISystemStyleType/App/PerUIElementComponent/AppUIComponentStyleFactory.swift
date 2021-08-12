//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppUIComponentStyleFactory: UIElementComponentTypeStyleFactory, UIComponentStyleFactoryInterface {
    
    public func label() -> UIElementComponentStylePack<LabelUIComponentStyleProperties> {
        return .default(factory: self, styleType: styleType)
    }
    
    public func button() -> UIElementComponentStylePack<ButtonUIComponentStyleProperties> {
        return .default(factory: self, styleType: styleType)
    }
    
    public func placeholder() -> UIElementComponentStylePack<PlaceholderUIComponentStyleProperties> {
        return .default(factory: self, styleType: styleType)
    }
}
