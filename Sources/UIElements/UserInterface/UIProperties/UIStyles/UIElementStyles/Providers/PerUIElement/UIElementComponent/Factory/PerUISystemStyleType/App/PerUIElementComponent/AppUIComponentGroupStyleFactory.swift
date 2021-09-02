//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppUIComponentGroupStyleFactory:
    UIElementComponentTypeStyleFactory,
    UIComponentGroupStyleFactoryInterface {
    
    public func card() -> UIElementComponentStyle<
        CardUIComponentGroupStyleProperties
    > {
        return .init(
            type: styleType,
            properties: .init(
                lookType: .system(.init(
                    whole: .init(
                        border: .init(
                            corners: .rounded,
                            width: 1,
                            color: .uie.`init`(
                                hex: "#dfa906ff"
                            ) ?? .black
                        ),
                        separator: .init(
                            width: 1,
                            color: .uie.`init`(
                                hex: "#d8a406ff"
                            ) ?? .blue
                        )
                    ),
                    title: .init(
                        backgroundColor: .uie.`init`(
                            hex: "#f7bb07ff"
                        ) ?? .red,
                        textColor: .uie.`init`(
                            hex: "#212529ff"
                        ) ?? .orange
                    ),
                    body: .init(
                        backgroundColor: .uie.`init`(
                            hex: "#ffc107ff"
                        ) ?? .green
                    )
                )),
                layoutParams: .init(
                    title: .init(
                        leftMargin: 16,
                        rightMargin: 16,
                        topMargin: 12,
                        bottomMargin: 12
                    ),
                    body: .init(
                        leftMargin: 16,
                        rightMargin: 16,
                        topMargin: 16,
                        bottomMargin: 16
                    )
                )
            )
        )
    }
    
    public func navigationMenu() -> UIElementComponentStyle<
        NavigationMenuUIComponentGroupStyleProperties
    > {
        return .default(
            styleType: styleType
        )
    }
}
