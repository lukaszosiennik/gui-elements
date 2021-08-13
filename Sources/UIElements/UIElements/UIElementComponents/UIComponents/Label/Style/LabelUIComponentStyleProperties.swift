//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public typealias LabelUIComponentStyleProperties = UIComponentStylePropertiesTemplate<LabelUIComponentStylePropertiesLook,
                                                                                      LabelUIComponentStylePropertiesLookParams,
                                                                                      LabelUIComponentStylePropertiesLayoutParams>

public struct LabelUIComponentStylePropertiesOverwritten: UIComponentStyleProperties {
    
    public var look: LabelUIComponentStylePropertiesOverwrittenLook?
    public var lookParams: LabelUIComponentStylePropertiesOverwrittenLookParams?
    public var layoutParams: LabelUIComponentStylePropertiesOverwrittenLayoutParams?
    
    public init(look: LabelUIComponentStylePropertiesOverwrittenLook? = nil, lookParams: LabelUIComponentStylePropertiesOverwrittenLookParams? = nil, layoutParams: LabelUIComponentStylePropertiesOverwrittenLayoutParams? = nil) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
