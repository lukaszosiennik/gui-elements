//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

final class DevUIComponentScreenStyleFactory: UIElementComponentTypeStyleFactory, UIComponentScreenStyleFactoryInterface {
    
    func common() -> UIElementComponentStylePack<CommonUIComponentScreenStyleProperties> {
        return UIElementComponentStylePack(
            factory: self,
            style: UIElementComponentStyle(
                type: styleType,
                properties: CommonUIComponentScreenStyleProperties(
                    look: CommonUIComponentScreenStylePropertiesLook(backgroundColor: DevUIColorPalette.UIElementComponent.UIComponentScreen.Property.Background.white),
                    layoutParams: CommonUIComponentScreenStylePropertiesLayoutParams()
                )
            )
        )
    }
}
