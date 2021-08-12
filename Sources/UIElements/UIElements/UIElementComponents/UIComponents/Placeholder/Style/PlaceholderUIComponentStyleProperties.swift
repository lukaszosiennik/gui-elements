//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct PlaceholderUIComponentStyleProperties: UIComponentStyleProperties {
    
    public var look: PlaceholderUIComponentStylePropertiesLook
    public var layoutParams: PlaceholderUIComponentStylePropertiesLayoutParams
    
    public init(look: PlaceholderUIComponentStylePropertiesLook, layoutParams: PlaceholderUIComponentStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
