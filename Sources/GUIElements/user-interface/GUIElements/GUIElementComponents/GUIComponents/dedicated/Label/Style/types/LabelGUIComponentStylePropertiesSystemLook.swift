//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct LabelGUIComponentStylePropertiesSystemLook:
    GUIComponentStylePropertiesSystemLook {
    
    public let textColor: UIColor
    
    public init(
        textColor: UIColor
    ) {
        self.textColor = textColor
    }
    
    public init(
        look: Self,
        overwrittenBy newLook: LabelGUIComponentStylePropertiesOverwrittenLook?
    ) {
        guard let textColor = newLook?.textColor
        else {
            self = look
            return
        }
        
        self.textColor = textColor
    }
}
