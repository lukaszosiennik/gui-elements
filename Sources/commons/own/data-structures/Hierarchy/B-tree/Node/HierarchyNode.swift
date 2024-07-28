//
//  Created by Łukasz Osiennik on 17/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public final class HierarchyNode<
    NodeValue:
        HierarchyNodeValueInterface,
    NodeChildrenLeafAction:
        HierarchyNodeChildrenLeafActionInterface
> {
    
    public let value: NodeValue
    
    weak public private(set) var parent: HierarchyNode?
    public let childrenValue: HierarchyNodeChildrenValueUnion<
        HierarchyNode,
        NodeChildrenLeafAction
    >
    
    public init(
        value: NodeValue,
        childrenValue: HierarchyNodeChildrenValueUnion<
            HierarchyNode,
            NodeChildrenLeafAction
        > = .leaf
    ) {
        self.value = value
        self.childrenValue = childrenValue
        
        setup()
    }
    
    private func setup() {
        guard case let .branch(children) = childrenValue
        else {
            return
        }
        
        children.forEach {
            $0.parent = self
        }
    }
}

extension HierarchyNode {
    
    public var levelType: HierarchyNodeLevelType {
        return parent == nil ?
            .root : .subtree
    }
    
    public var childrenType: HierarchyNodeChildrenType {
        switch childrenValue {
        case .branch:
            return .branch
        case .leaf:
            return .leaf
        }
    }
}
