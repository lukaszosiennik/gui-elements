//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct SelectionListOptionUIComponentSetStyleProperties: UIComponentSetStyleProperties {
    
    var look: SelectionListOptionUIComponentSetStylePropertiesLook
    var layoutParams: SelectionListOptionUIComponentSetStylePropertiesLayoutParams
    
    init(look: SelectionListOptionUIComponentSetStylePropertiesLook, layoutParams: SelectionListOptionUIComponentSetStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
