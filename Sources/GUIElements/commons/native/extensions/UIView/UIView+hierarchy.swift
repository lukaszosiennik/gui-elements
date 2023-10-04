//
//  Created by Łukasz Osiennik on 19/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

import UIKit
import commons

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
