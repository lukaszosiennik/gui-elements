//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct PlaceholderUIComponentParams: UIComponentParams {
    
    public let color: UIColor?
    public let height: CGFloat?
    
    public static var `default`: Self {
        return .init(
            color: nil,
            height: nil
        )
    }
    
    public init(
        color: UIColor? = nil,
        height: CGFloat?
    ) {
        self.color = color
        self.height = height
    }
}
