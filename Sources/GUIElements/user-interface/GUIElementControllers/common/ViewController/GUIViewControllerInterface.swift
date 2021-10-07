//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol GUIViewControllerInterface
where
    Self
        : UIViewController {
            
    associatedtype Params:
        GUIViewControllerParamsInterface
            
    associatedtype Mapper:
        GUIViewControllerParamsMapperInterface
            
    associatedtype View:
        GUIElementComponent
            
    associatedtype Presenter:
        GUIPresenterInterface
            
    init(
        params: Params
    )
            
    func loadView()
}

extension GUIViewControllerInterface {
    
    var customView: View? {
        return view as? View
    }
}
