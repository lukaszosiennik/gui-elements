//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIElementComponentStylePropertiesOverwritten:
    GUIElementStyleProperties {
    
    associatedtype GUIElementComponentStylePropertiesOverwrittenLookType:
        GUIElementComponentStylePropertiesOverwrittenLook
    associatedtype GUIElementComponentStylePropertiesOverwrittenLookParamsType:
        GUIElementComponentStylePropertiesOverwrittenLookParams
    associatedtype GUIElementComponentStylePropertiesOverwrittenLayoutParamsType:
        GUIElementComponentStylePropertiesOverwrittenLayoutParams
    
    var look: GUIElementComponentStylePropertiesOverwrittenLookType? {
        get
    }
    var lookParams: GUIElementComponentStylePropertiesOverwrittenLookParamsType? {
        get
    }
    var layoutParams: GUIElementComponentStylePropertiesOverwrittenLayoutParamsType? {
        get
    }
    
    init(
        look: GUIElementComponentStylePropertiesOverwrittenLookType?,
        lookParams: GUIElementComponentStylePropertiesOverwrittenLookParamsType?,
        layoutParams: GUIElementComponentStylePropertiesOverwrittenLayoutParamsType?
    )
}
