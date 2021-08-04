//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentStyleFactory: UIElementComponentTypeStyleFactory, UIComponentStyleFactoryInterface {
    
    public func label() -> UIElementComponentStylePack<LabelUIComponentStyleProperties> {
        return UIElementComponentStylePack(
            factory: self,
            style: UIElementComponentStyle(
                type: styleType,
                properties: LabelUIComponentStyleProperties(
                    look: LabelUIComponentStylePropertiesLook(),
                    layoutParams: LabelUIComponentStylePropertiesLayoutParams()
                )
            )
        )
    }
    
    public func button() -> UIElementComponentStylePack<ButtonUIComponentStyleProperties> {
        return .default(factory: self)
    }
}
