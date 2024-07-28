//
//  Created by Łukasz Osiennik on 20/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

import commons
import UIKit

public struct MenuHierarchyNodeChildrenLeafAction:
    HierarchyNodeChildrenLeafActionInterface {
 
    public static var none: (
        UIViewController?
    ) -> Void {
        return { _ in }
    }
}
