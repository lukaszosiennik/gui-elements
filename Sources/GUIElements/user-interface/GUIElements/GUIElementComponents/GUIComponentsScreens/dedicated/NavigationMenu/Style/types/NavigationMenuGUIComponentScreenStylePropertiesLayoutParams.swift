//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

import UIKit

public struct NavigationMenuGUIComponentScreenStylePropertiesLayoutParams:
    GUIComponentScreenStylePropertiesLayoutParams {
    
    public let leftMargin: CGFloat
    public let rightMargin: CGFloat
    
    public static var preferred: Self? {
        return .init(
            leftMargin: DefaultConstantPalette.NavigationMenu.GUILayoutParams.margin_left_16,
            rightMargin: DefaultConstantPalette.NavigationMenu.GUILayoutParams.margin_left_16
        )
    }
    
    public init(
        leftMargin: CGFloat,
        rightMargin: CGFloat
    ) {
        self.leftMargin = leftMargin
        self.rightMargin = rightMargin
    }
}
