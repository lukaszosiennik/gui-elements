//
//  Created by Łukasz Osiennik on 24/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct EmptyGUIComponentParams:
    GUIComponentParams {
    
    public static var `default`: Self {
        return .init()
    }
    
    public init() {}
}
