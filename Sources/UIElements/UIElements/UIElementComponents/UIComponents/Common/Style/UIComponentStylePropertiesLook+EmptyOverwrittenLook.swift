//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension UIComponentStylePropertiesLook where UIElementComponentStylePropertiesOverwrittenLookType == EmptyUIComponentStylePropertiesOverwrittenLook {
    
    public init?(look: Self?, overwrittenBy newLook: EmptyUIComponentStylePropertiesOverwrittenLook?) {
        return nil
    }
}
