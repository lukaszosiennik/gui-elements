//
//  Created by Łukasz Osiennik on 19/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

import commons

public protocol GUIElementsExtendedTypeInterface {
    
    associatedtype ExtendedType

    static var uie: CommonsExtension<
        ExtendedType
    >.Type {
        get
    }
    var uie: CommonsExtension<
        ExtendedType
    > {
        get
    }
}

extension GUIElementsExtendedTypeInterface {
    
    public static var uie: CommonsExtension<
        Self
    >.Type {
        return CommonsExtension<
            Self
        >.self
    }

    public var uie: CommonsExtension<
        Self
    > {
        return .init(
            self
        )
    }
}
