//
//  Created by Łukasz Osiennik on 19/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIElementsExtension<ExtendedType> {
    
    private(set) var instance: ExtendedType

    public init(_ instance: ExtendedType) {
        self.instance = instance
    }
}
