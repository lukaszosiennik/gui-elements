//
//  Created by Łukasz Osiennik on 16/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol NavigationMenuUIElementComponentParamsOptionsKeyValueInterface {
    
    associatedtype KeyType:
        InputUIElementComponentActionKeyInterface
    associatedtype ValueType:
        NavigationMenuUIElementComponentParamsOptionValueObjectInterface
}
