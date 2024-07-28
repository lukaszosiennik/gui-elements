//
//  Created by Łukasz Osiennik on 06/10/2023.
//  Copyright © 2023 Łukasz Osiennik. All rights reserved.
//

import commons

public final class NavigationMenuGUIDataActions<
    ActionType:
        HierarchyNodeChildrenLeafActionInterface
> {
    
    public enum ActionsError:
        Error {
        
        case notAssignedUndefinedAction
        case notAssignedUnlinkedAction
    }
    
    public typealias ActionId =
        NavigationMenuGUIData.Menu.Option.Kind.ActionId
    public typealias Action =
        ActionType.Action
    
    public typealias Actions =
        [ActionId: Action]
    
    private let actions: Actions
    
    public subscript(
        actionId: ActionId
    ) -> Action? {
        actions[actionId]
    }
    
    public var undefined: Action {
        get throws {
            guard let action = actions[.undefined] else {
                throw ActionsError.notAssignedUndefinedAction
            }
            
            return action
        }
    }
    
    public var unlinked: Action {
        get throws {
            guard let action = actions[.unlinked] else {
                throw ActionsError.notAssignedUnlinkedAction
            }
            
            return action
        }
    }
    
    public init(
        _ actions: Actions
    ) {
        self.actions = actions
    }
}
