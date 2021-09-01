//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct PlaceholderUIComponentParamsPropertiesLayoutParams:
    UIComponentParamsProperties {
    
    public let height: CGFloat
    
    public init(height: CGFloat) {
        self.height = height
    }
}
