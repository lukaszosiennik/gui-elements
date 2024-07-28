//
//  Created by Łukasz Osiennik on 17/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol HierarchyNodeChildrenLeafActionInterface {
    
    associatedtype Action
    
    static var none: Action {
        get
    }
}
