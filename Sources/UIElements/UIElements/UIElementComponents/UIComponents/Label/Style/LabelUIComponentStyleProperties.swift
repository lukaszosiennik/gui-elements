//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public typealias LabelUIComponentStyleProperties = UIComponentStylePropertiesTemplate<LabelUIComponentStylePropertiesLook,
                                                                                      LabelUIComponentStylePropertiesLookParams,
                                                                                      LabelUIComponentStylePropertiesLayoutParams>

public typealias LabelUIComponentStylePropertiesOverwritten = UIComponentStylePropertiesTemplate<LabelUIComponentStylePropertiesOverwrittenLook,
                                                                                                 LabelUIComponentStylePropertiesOverwrittenLookParams,
                                                                                                 LabelUIComponentStylePropertiesOverwrittenLayoutParams>

extension LabelUIComponentStylePropertiesOverwritten {
    
    init(overwrittenLook: LabelUIComponentStylePropertiesOverwrittenLook? = nil, overwrittenLookParams: LabelUIComponentStylePropertiesOverwrittenLookParams? = nil, overwrittenLayoutParams: LabelUIComponentStylePropertiesOverwrittenLayoutParams? = nil) {
        self.init(look: overwrittenLook, lookParams: overwrittenLookParams, layoutParams: overwrittenLayoutParams)
    }
}
