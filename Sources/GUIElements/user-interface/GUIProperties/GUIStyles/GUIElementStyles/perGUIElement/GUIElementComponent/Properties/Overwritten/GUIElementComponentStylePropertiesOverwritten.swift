//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIElementComponentStylePropertiesOverwritten:
    GUIElementStyleProperties {
    
    associatedtype Look:
        GUIElementComponentStylePropertiesOverwrittenLook
    associatedtype LookParams:
        GUIElementComponentStylePropertiesOverwrittenLookParams
    associatedtype LayoutParams:
        GUIElementComponentStylePropertiesOverwrittenLayoutParams
    
    var look: Look? {
        get
    }
    var lookParams: LookParams? {
        get
    }
    var layoutParams: LayoutParams? {
        get
    }
    
    init(
        look: Look?,
        lookParams: LookParams?,
        layoutParams: LayoutParams?
    )
}
