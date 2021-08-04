//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct ButtonUIComponentStyleProperties: UIComponentStyleProperties {
    
    public var look: ButtonUIComponentStylePropertiesLook
    public var layoutParams: ButtonUIComponentStylePropertiesLayoutParams
    
    public init(look: ButtonUIComponentStylePropertiesLook, layoutParams: ButtonUIComponentStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
