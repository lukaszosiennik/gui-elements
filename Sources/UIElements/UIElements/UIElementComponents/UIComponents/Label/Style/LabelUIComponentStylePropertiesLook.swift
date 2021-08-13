//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelUIComponentStylePropertiesLook: UIComponentStylePropertiesLook {
    
    init() {}
    
    init?(look: LabelUIComponentStylePropertiesLook?, overwrittenBy newLook: LabelUIComponentStylePropertiesOverwrittenLook?) {
        guard let look = look else {
            return nil
        }
    }
}

public struct LabelUIComponentStylePropertiesOverwrittenLook: UIComponentStylePropertiesLook {
    
    init() {}
}
