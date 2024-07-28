//
//  Created by Łukasz Osiennik on 19/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct CommonsExtension<
    ExtendedType
> {
    
    public let instance: ExtendedType

    public init(
        _ instance: ExtendedType
    ) {
        self.instance = instance
    }
}
