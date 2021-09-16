//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuUIElementComponentParamsInterface {
    
    associatedtype OptionKeyType:
        InputUIElementComponentActionKeyInterface
    associatedtype OptionValueType:
        NavigationMenuUIElementComponentParamsOptionValueObjectInterface
    associatedtype ActionsFunctionType
    
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
    
    var actions: ActionsFunctionType? {
        get
    }
}
