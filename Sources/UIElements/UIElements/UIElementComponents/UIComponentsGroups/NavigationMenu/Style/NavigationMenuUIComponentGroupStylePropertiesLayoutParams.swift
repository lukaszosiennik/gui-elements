//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct NavigationMenuUIComponentGroupStylePropertiesLayoutParams: UIComponentGroupStylePropertiesLayoutParams {
    
    public let optionHeight: CGFloat?
    public let optionsSpace: CGFloat
    public let titleTopMargin: CGFloat
    public let titleBottomMargin: CGFloat
    
    init(optionHeight: CGFloat?, optionsSpace: CGFloat, titleTopMargin: CGFloat, titleBottomMargin: CGFloat) {
        self.optionHeight = optionHeight
        self.optionsSpace = optionsSpace
        self.titleTopMargin = titleTopMargin
        self.titleBottomMargin = titleBottomMargin
    }
    
    public init?(layoutParams: Self?, overwrittenBy newLayoutParams: EmptyUIComponentGroupStylePropertiesOverwrittenLayoutParams?) {
        return nil
    }
}
