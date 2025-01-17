//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

import commons
import UIKit

extension CommonsExtension
where
    ExtendedType
        : UIView {

    public func isConstraintExists(
        with identifier: String
    ) -> Bool {
        return constraint(
            with: identifier
        ) != nil
    }
    
    public func constraint(
        with identifier: String
    ) -> NSLayoutConstraint? {
        return instance.constraints.first {
            $0.identifier == identifier
        }
    }
    
    @discardableResult
    public func removeConstraintIfExists(
        with identifier: String
    ) -> Bool {
        guard let constraint = constraint(
            with: identifier
        )
        else {
            return false
        }
        
        instance.removeConstraint(
            constraint
        )
        
        return true
    }
}
