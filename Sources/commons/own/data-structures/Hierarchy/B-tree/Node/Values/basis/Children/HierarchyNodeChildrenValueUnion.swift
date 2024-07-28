//
//  Created by Łukasz Osiennik on 17/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public enum HierarchyNodeChildrenValueUnion<
    HierarchyNode,
    ActionType:
        HierarchyNodeChildrenLeafActionInterface
>:
    HierarchyNodeChildrenValueUnionInterface {
    
    case branch(children: [HierarchyNode])
    case leaf(action: ActionType.Action)
}

extension HierarchyNodeChildrenValueUnion {
    
    public static var leaf: Self {
        return .leaf(
            action: ActionType.none
        )
    }
}
