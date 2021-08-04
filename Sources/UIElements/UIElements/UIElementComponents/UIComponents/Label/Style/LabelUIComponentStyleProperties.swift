//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct LabelUIComponentStyleProperties: UIComponentStyleProperties {
    
    var look: LabelUIComponentStylePropertiesLook
    var layoutParams: LabelUIComponentStylePropertiesLayoutParams
    
    init(look: LabelUIComponentStylePropertiesLook, layoutParams: LabelUIComponentStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
