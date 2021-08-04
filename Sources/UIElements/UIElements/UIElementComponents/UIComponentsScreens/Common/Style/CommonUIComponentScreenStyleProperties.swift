//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct CommonUIComponentScreenStyleProperties: UIComponentScreenStyleProperties {
    
    var look: CommonUIComponentScreenStylePropertiesLook
    var layoutParams: CommonUIComponentScreenStylePropertiesLayoutParams
    
    init(look: CommonUIComponentScreenStylePropertiesLook, layoutParams: CommonUIComponentScreenStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
