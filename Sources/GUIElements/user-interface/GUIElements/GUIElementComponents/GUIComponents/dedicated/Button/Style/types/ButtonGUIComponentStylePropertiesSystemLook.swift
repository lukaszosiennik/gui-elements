//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

import UIKit

public struct ButtonGUIComponentStylePropertiesSystemLook:
    GUIComponentStylePropertiesSystemLook {
    
    public let titleColorNormal: UIColor
    public let titleColorHighlighted: UIColor
    
    public init(
        titleColorNormal: UIColor,
        titleColorHighlighted: UIColor
    ) {
        self.titleColorNormal = titleColorNormal
        self.titleColorHighlighted = titleColorHighlighted
    }
}
