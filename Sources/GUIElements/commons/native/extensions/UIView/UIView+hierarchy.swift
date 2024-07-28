//
//  Created by Łukasz Osiennik on 19/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

import commons
import UIKit

extension CommonsExtension
where
    ExtendedType
        : UIView {
    
    public func addSubview(
        _ view: UIView
    ) {
        view.translatesAutoresizingMaskIntoConstraints = false
        
        instance.addSubview(
            view
        )
    }
}
