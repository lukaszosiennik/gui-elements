//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentStyleFactory: UIElementComponentTypeStyleFactory, UIComponentStyleFactoryInterface {
    
    private typealias ColorPalette = DevUIColorPalette.UIElementComponent.UIComponent
    private typealias ConstantPalette = DevUIElementComponentConstantPalette.UIElementComponent.UIComponent
    
    public func label() -> UIElementComponentStylePack<LabelUIComponentStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(),
                    lookParams: .init(
                        linesNumber: ConstantPalette.LabelUIComponent.UILookParams.linesNumber_1
                    ),
                    layoutParams: .init()
                )
            )
        )
    }
    
    public func button() -> UIElementComponentStylePack<ButtonUIComponentStyleProperties> {
        return .default(factory: self, styleType: styleType)
    }
    
    public func placeholder() -> UIElementComponentStylePack<PlaceholderUIComponentStyleProperties> {
        return .init(
            factory: self,
            style: .init(
                type: styleType,
                properties: .init(
                    look: .init(
                        backgroundColor: ColorPalette.Placeholder.background_green
                    ),
                    lookParams: .init(),
                    layoutParams: .init(
                        height: ConstantPalette.Placeholder.UILayoutParams.height_150
                    )
                )
            )
        )
    }
}
