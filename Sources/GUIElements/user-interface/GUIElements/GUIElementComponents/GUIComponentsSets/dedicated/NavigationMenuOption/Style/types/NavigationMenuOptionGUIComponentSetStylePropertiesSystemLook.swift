//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

import UIKit

public struct NavigationMenuOptionGUIComponentSetStylePropertiesSystemLook:
    GUIComponentSetStylePropertiesSystemLook {
    
    public let backgroundColor: UIColor
    public let borderColor: UIColor
    public let borderWidth: CGFloat
    
    public init(
        backgroundColor: UIColor,
        borderColor: UIColor,
        borderWidth: CGFloat
    ) {
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.borderWidth = borderWidth
    }
}
