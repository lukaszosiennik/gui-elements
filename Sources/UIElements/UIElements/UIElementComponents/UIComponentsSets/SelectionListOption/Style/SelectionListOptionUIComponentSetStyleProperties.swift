//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct SelectionListOptionUIComponentSetStyleProperties: UIComponentSetStyleProperties {
    
    public var look: SelectionListOptionUIComponentSetStylePropertiesLook
    public var layoutParams: SelectionListOptionUIComponentSetStylePropertiesLayoutParams
    
    public init(look: SelectionListOptionUIComponentSetStylePropertiesLook, layoutParams: SelectionListOptionUIComponentSetStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
