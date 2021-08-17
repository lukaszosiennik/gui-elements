//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct NavigationMenuOptionUIComponentSetStylePropertiesLook: UIComponentSetStylePropertiesLook {
    
    public let backgroundColor: UIColor
    public let borderColor: UIColor
    public let borderWidth: CGFloat
    
    init(backgroundColor: UIColor, borderColor: UIColor, borderWidth: CGFloat) {
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.borderWidth = borderWidth
    }
}
