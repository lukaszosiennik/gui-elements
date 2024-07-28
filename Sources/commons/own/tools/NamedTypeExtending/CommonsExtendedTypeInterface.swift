//
//  Created by Łukasz Osiennik on 19/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol CommonsExtendedTypeInterface {
    
    associatedtype ExtendedType

    static var commons: CommonsExtension<
        ExtendedType
    >.Type {
        get
    }
    var commons: CommonsExtension<
        ExtendedType
    > {
        get
    }
}

extension CommonsExtendedTypeInterface {
    
    public static var commons: CommonsExtension<
        Self
    >.Type {
        return CommonsExtension<
            Self
        >.self
    }

    public var commons: CommonsExtension<
        Self
    > {
        return .init(
            self
        )
    }
}
