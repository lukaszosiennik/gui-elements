//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit
import commons

extension CommonsExtension where
    ExtendedType: UIView {

    func isConstraintExists(with identifier: String) -> Bool {
        return constraint(with: identifier) != nil
    }
    
    func constraint(with identifier: String) -> NSLayoutConstraint? {
        return instance.constraints.first {
            $0.identifier == identifier
        }
    }
    
    @discardableResult
    func removeConstraintIfExists(with identifier: String) -> Bool {
        guard let constraint = constraint(with: identifier) else {
            return false
        }
        
        instance.removeConstraint(constraint)
        
        return true
    }
}
