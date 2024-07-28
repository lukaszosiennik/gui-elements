//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public protocol GUIComponentStylePropertiesSystemLook:
    GUIElementComponentStylePropertiesSystemLook
where
    OverwrittenLook
        : GUIComponentStylePropertiesOverwrittenLook {}
