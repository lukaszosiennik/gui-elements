//
//  Created by Łukasz Osiennik on 24/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct EmptyGUIComponentParams:
    GUIComponentParams {
    
    public static var `default`: Self {
        return .init()
    }
    
    public init() {}
}
