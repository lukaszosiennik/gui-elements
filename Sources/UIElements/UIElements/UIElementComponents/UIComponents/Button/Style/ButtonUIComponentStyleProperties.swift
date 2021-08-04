//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct ButtonUIComponentStyleProperties: UIComponentStyleProperties {
    
    var look: ButtonUIComponentStylePropertiesLook
    var layoutParams: ButtonUIComponentStylePropertiesLayoutParams
    
    init(look: ButtonUIComponentStylePropertiesLook, layoutParams: ButtonUIComponentStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
