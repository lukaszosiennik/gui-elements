//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

import UIKit

public struct PlaceholderGUIComponentParamsPropertiesLook:
    GUIComponentParamsProperties {
    
    public let color: UIColor
    
    public init(
        color: UIColor
    ) {
        self.color = color
    }
}
