//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStylePropertiesSystemLook: UIElementStylePropertiesLook {
    
    associatedtype UIElementComponentStylePropertiesOverwrittenLookType: UIElementComponentStylePropertiesOverwrittenLook

    init(
        look: Self,
        overwrittenBy newLook: UIElementComponentStylePropertiesOverwrittenLookType?
    )
}
