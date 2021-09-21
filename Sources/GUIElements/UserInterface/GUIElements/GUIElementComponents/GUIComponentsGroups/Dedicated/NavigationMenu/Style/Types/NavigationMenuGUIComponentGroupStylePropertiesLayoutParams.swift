//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct NavigationMenuGUIComponentGroupStylePropertiesLayoutParams:
    GUIComponentGroupStylePropertiesLayoutParams {
    
    public let optionHeight: CGFloat?
    public let optionsSpace: CGFloat
    public let titleTopMargin: CGFloat
    public let titleBottomMargin: CGFloat
    
    public static var preferred: Self? {
        return .init(
            optionHeight: nil,
            optionsSpace: DefaultConstantPalette.NavigationMenu.GUILayoutParams.options_space_0,
            titleTopMargin: DefaultConstantPalette.NavigationMenu.GUILayoutParams.title_margin_top_4,
            titleBottomMargin: DefaultConstantPalette.NavigationMenu.GUILayoutParams.title_margin_bottom_4
        )
    }
    
    public init(
        optionHeight: CGFloat?,
        optionsSpace: CGFloat,
        titleTopMargin: CGFloat,
        titleBottomMargin: CGFloat
    ) {
        self.optionHeight = optionHeight
        self.optionsSpace = optionsSpace
        self.titleTopMargin = titleTopMargin
        self.titleBottomMargin = titleBottomMargin
    }
}
