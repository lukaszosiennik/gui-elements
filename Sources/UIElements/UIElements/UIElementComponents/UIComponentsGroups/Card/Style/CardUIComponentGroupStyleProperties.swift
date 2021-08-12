//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CardUIComponentGroupStyleProperties: UIComponentGroupStyleProperties {
    
    public var look: CardUIComponentGroupStylePropertiesLook
    public var layoutParams: CardUIComponentGroupStylePropertiesLayoutParams
    
    public init(look: CardUIComponentGroupStylePropertiesLook, layoutParams: CardUIComponentGroupStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
