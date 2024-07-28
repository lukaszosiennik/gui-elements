//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

import UIKit

public struct PlaceholderGUIComponentParamsPropertiesLayoutParams:
    GUIComponentParamsProperties {
    
    public let height: CGFloat
    
    public init(
        height: CGFloat
    ) {
        self.height = height
    }
}
