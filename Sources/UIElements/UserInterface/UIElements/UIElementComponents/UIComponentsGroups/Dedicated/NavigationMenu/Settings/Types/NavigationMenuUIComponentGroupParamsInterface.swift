//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuUIComponentGroupParamsInterface {
    
    associatedtype OptionKeyType:
        InputUIElementComponentActionsKeyInterface
    associatedtype OptionValueType:
        NavigationMenuUIComponentGroupParamsOptionValueObjectInterface
    associatedtype ActionsType
    
    typealias Options =
        KeyValuePairs<
            OptionKeyType,
            OptionValueType
        >
    
    var title: String {
        get
    }
    
    var options: Options {
        get
    }
    
    var actions: ActionsType? {
        get
    }
}
