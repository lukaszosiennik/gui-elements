//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct PlaceholderUIComponentStylePropertiesLayoutParams: UIComponentStylePropertiesLayoutParams {
    
    public let height: CGFloat
    
    public static var preferred: Self? {
        return .init(
            height: DefaultUIComponentConstantPalette.Placeholder.UILayoutParams.height_100
        )
    }
}
