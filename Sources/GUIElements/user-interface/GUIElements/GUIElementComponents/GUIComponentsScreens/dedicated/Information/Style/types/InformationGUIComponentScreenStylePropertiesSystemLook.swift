//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

import UIKit

public struct InformationGUIComponentScreenStylePropertiesSystemLook:
    GUIComponentScreenStylePropertiesSystemLook {
    
    public let backgroundColor: UIColor
    
    public init(
        backgroundColor: UIColor
    ) {
        self.backgroundColor = backgroundColor
    }
}
