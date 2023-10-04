//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public typealias LabelGUIComponentStyleProperties =
    GUIComponentStylePropertiesTemplate<
        GUIComponentStylePropertiesLookTemplate<
            EmptyGUIComponentStylePropertiesOSLook,
            LabelGUIComponentStylePropertiesSystemLook
        >,
        LabelGUIComponentStylePropertiesLookParams,
        LabelGUIComponentStylePropertiesLayoutParams
    >
