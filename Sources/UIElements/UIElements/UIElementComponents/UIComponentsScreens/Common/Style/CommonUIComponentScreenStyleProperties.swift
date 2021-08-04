//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CommonUIComponentScreenStyleProperties: UIComponentScreenStyleProperties {
    
    public var look: CommonUIComponentScreenStylePropertiesLook
    public var layoutParams: CommonUIComponentScreenStylePropertiesLayoutParams
    
    public init(look: CommonUIComponentScreenStylePropertiesLook, layoutParams: CommonUIComponentScreenStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
