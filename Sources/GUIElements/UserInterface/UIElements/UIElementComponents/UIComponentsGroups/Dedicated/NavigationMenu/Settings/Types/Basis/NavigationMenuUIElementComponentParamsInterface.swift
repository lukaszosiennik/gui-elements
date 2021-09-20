//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuUIElementComponentParamsInterface {
    
    associatedtype OptionsKeyValueType:
        NavigationMenuUIElementComponentParamsOptionsKeyValueInterface
    associatedtype ActionsFunctionType
    
    typealias Options =
        KeyValuePairs<
            OptionsKeyValueType.KeyType,
            OptionsKeyValueType.ValueType
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
