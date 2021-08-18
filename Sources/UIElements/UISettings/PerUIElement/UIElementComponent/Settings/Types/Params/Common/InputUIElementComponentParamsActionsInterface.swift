//
//  Created by Łukasz Osiennik on 09/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol InputUIElementComponentParamsActionsInterface where Self: UIElementComponentParams {
    
    associatedtype ActionsKey: InputUIElementComponentActionsKeyInterface
    
    typealias Actions = (ActionsKey) -> Void
    
    var actions: Actions? { get }
}