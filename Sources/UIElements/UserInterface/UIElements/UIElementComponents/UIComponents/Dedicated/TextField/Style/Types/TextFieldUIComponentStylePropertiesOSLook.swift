//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct TextFieldUIComponentStylePropertiesOSLook:
    UIComponentStylePropertiesOSLook {
    
    public let borderStyle: UITextField.BorderStyle
    
    public init() {
        self.init(borderStyle: .none)
    }
    
    public init(borderStyle: UITextField.BorderStyle) {
        self.borderStyle = borderStyle
    }
}
