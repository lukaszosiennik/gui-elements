//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentStyleFactory: UIElementComponentTypeStyleFactory, UIComponentStyleFactoryInterface {
    
    public func label() -> UIElementComponentStylePack<LabelUIComponentStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(),
                    layoutParams: .init()
                )
            )
        )
    }
    
    public func button() -> UIElementComponentStylePack<ButtonUIComponentStyleProperties> {
        return .default(factory: self)
    }
}
