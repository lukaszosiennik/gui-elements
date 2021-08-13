//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelUIComponentStyleProperties: UIComponentStyleProperties {
    
    public let look: LabelUIComponentStylePropertiesLook?
    public let lookParams: LabelUIComponentStylePropertiesLookParams?
    public let layoutParams: LabelUIComponentStylePropertiesLayoutParams?
    
    public init(look: LabelUIComponentStylePropertiesLook?, lookParams: LabelUIComponentStylePropertiesLookParams?, layoutParams: LabelUIComponentStylePropertiesLayoutParams?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}

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
