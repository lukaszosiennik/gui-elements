//
//  Created by Łukasz Osiennik on 16/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct VoidGUIPropertyDefaultValue:
    GUIPropertyDefaultValueInterface {
    
    public static var `default`: Self {
        return .init()
    }
}
