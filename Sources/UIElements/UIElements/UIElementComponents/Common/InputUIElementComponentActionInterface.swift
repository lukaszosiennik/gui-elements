//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol InputUIElementComponentActionInterface where Self: UIView {
    
    typealias Action = () -> Void
    
    var action: Action? { get set }
}
