//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct TextFieldGUIComponentStylePropertiesOSLook:
    GUIComponentStylePropertiesOSLook {
    
    public let borderStyle: UITextField.BorderStyle
    
    public static var `default`: Self {
        return .init(
            borderStyle: .none
        )
    }
    
    public init(
        borderStyle: UITextField.BorderStyle
    ) {
        self.borderStyle = borderStyle
    }
}
