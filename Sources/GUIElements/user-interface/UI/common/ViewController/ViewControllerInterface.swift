//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol ViewControllerInterface
where
    Self
        : UIViewController {
            
    associatedtype View:
        GUIElementComponent
            
    associatedtype ViewModel:
        ViewModelInterface
            
    associatedtype Params:
        ViewControllerParamsInterface
            
    associatedtype Mapper:
        ViewControllerMapperInterface
}

extension ViewControllerInterface {
    
    var customView: View? {
        return view as? View
    }
}
