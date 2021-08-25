//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevUIComponentStyleFactory: UIElementComponentTypeStyleFactory, UIComponentStyleFactoryInterface {
    
    private typealias ColorPalette = DevUIColorPalette.UIElementComponent.UIComponent
    private typealias ConstantPalette = DevUIElementComponentConstantPalette.UIElementComponent.UIComponent
    
    public func label() -> UIElementComponentStyle<LabelUIComponentStyleProperties> {
        return .init(
            type: styleType,
            properties: .init(
                lookSort: .system(.init(
                    textColor: .blue
                )),
                lookParams: .default,
                layoutParams: .init()
            )
        )
    }
    
    public func button() -> UIElementComponentStyle<ButtonUIComponentStyleProperties> {
        return .init(
            type: styleType,
            properties: .init(
                lookSort: .system(.init(
                    titleColorNormal: .red,
                    titleColorHighlighted: .green
                )),
                layoutParams: .init()
            )
        )
    }
    
    public func placeholder() -> UIElementComponentStyle<PlaceholderUIComponentStyleProperties> {
        return .init(
            type: styleType,
            properties: .init(
                lookSort: .system(.init(
                    backgroundColor: ColorPalette.Placeholder.background_green
                )),
                layoutParams: .preferred
            )
        )
    }
}
