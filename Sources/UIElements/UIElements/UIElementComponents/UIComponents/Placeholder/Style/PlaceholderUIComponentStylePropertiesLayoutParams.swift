//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct PlaceholderUIComponentStylePropertiesLayoutParams: UIComponentStylePropertiesLayoutParams {
    
    public let height: CGFloat
    
    init(height: CGFloat) {
        self.height = height
    }
    
    public init?(layoutParams: Self?, overwrittenBy newLayoutParams: EmptyUIComponentStylePropertiesOverwrittenLayoutParams?) {
        return nil
    }
}
