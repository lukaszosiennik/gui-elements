//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppUIComponentStyleFactory: UIElementComponentTypeStyleFactory, UIComponentStyleFactoryInterface {
    
    public func label() -> UIElementComponentStyle<LabelUIComponentStyleProperties> {
        return .default(
            styleType: styleType
        )
    }
    
    public func button() -> UIElementComponentStyle<ButtonUIComponentStyleProperties> {
        return .default(
            styleType: styleType
        )
    }
    
    public func placeholder() -> UIElementComponentStyle<PlaceholderUIComponentStyleProperties> {
        return .default(
            styleType: styleType
        )
    }
}
