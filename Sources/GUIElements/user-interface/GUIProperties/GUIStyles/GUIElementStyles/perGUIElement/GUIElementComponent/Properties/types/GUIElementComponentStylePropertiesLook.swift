//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol GUIElementComponentStylePropertiesLook {
    
    associatedtype OSLook:
        GUIElementComponentStylePropertiesOSLook
    associatedtype SystemLook:
        GUIElementComponentStylePropertiesSystemLook
}
