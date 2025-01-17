//
//  Created by Łukasz Osiennik on 01/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

import UIKit

public struct LabelGUIComponentStylePropertiesOverwrittenLook:
    GUIComponentStylePropertiesOverwrittenLook {
    
    public let textColor: UIColor?
    
    init(
        textColor: UIColor? = nil
    ) {
        self.textColor = textColor
    }
}
