//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelUIComponentStyleProperties: UIComponentStyleProperties {
    
    public var look: LabelUIComponentStylePropertiesLook
    public var layoutParams: LabelUIComponentStylePropertiesLayoutParams
    
    public init(look: LabelUIComponentStylePropertiesLook, layoutParams: LabelUIComponentStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
