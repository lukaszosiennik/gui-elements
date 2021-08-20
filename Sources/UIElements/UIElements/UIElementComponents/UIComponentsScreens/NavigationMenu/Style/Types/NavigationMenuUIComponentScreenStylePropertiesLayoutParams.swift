//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct NavigationMenuUIComponentScreenStylePropertiesLayoutParams: UIComponentScreenStylePropertiesLayoutParams {
    
    public let leftMargin: CGFloat
    public let rightMargin: CGFloat
    
    public static var preferred: Self? {
        return .init(
            leftMargin: DefaultUIComponentScreenConstantPalette.NavigationMenu.UILayoutParams.margin_left_16,
            rightMargin: DefaultUIComponentScreenConstantPalette.NavigationMenu.UILayoutParams.margin_left_16
        )
    }
}
