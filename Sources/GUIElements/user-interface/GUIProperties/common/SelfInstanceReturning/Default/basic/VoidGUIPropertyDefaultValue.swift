//
//  Created by Łukasz Osiennik on 16/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct VoidGUIPropertyDefaultValue:
    GUIPropertyDefaultValueInterface {
    
    public static var `default`: Self {
        return .init()
    }
}
