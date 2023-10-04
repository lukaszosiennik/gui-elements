//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentScreenStyleProperties:
    GUIElementComponentStyleProperties
where
    Look
        : GUIComponentScreenStylePropertiesLook,
    LookParams
        : GUIComponentScreenStylePropertiesLookParams,
    LayoutParams
        : GUIComponentScreenStylePropertiesLayoutParams {}
