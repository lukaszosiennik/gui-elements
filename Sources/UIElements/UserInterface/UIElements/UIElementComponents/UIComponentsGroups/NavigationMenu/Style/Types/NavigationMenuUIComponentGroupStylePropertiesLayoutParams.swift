//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct NavigationMenuUIComponentGroupStylePropertiesLayoutParams: UIComponentGroupStylePropertiesLayoutParams {
    
    public let optionHeight: CGFloat?
    public let optionsSpace: CGFloat
    public let titleTopMargin: CGFloat
    public let titleBottomMargin: CGFloat
    
    public static var preferred: Self? {
        return .init(
            optionHeight: nil,
            optionsSpace: DefaultUIComponentGroupConstantPalette.NavigationMenu.UILayoutParams.options_space_0,
            titleTopMargin: DefaultUIComponentGroupConstantPalette.NavigationMenu.UILayoutParams.title_margin_top_4,
            titleBottomMargin: DefaultUIComponentGroupConstantPalette.NavigationMenu.UILayoutParams.title_margin_bottom_4
        )
    }
}
