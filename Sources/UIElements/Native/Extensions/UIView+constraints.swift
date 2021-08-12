//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

extension UIView {
    
    func constraint(with identifier: String) -> NSLayoutConstraint? {
        return constraints.first { $0.identifier == identifier }
    }
}
