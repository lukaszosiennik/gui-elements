//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol SelfInstanceOverwrittingInterface:
    InstanceCreatingInterface {
    
    mutating func selfOverwrite(
        with instance: Self
    )
}

extension SelfInstanceOverwrittingInterface {
    
    public mutating func selfOverwrite(
        with instance: Self
    ) {
        self = instance
    }
}
