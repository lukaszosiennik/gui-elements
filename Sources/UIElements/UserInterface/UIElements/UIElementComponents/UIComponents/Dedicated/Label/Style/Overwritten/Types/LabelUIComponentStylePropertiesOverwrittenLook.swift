//
//  Created by Łukasz Osiennik on 01/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct LabelUIComponentStylePropertiesOverwrittenLook:
    UIComponentStylePropertiesOverwrittenLook {
    
    public let textColor: UIColor?
    
    init(textColor: UIColor? = nil) {
        self.textColor = textColor
    }
}
