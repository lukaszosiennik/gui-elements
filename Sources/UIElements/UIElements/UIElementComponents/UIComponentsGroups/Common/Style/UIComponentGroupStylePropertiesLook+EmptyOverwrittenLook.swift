//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension UIComponentGroupStylePropertiesLook where UIElementComponentStylePropertiesOverwrittenLookType == EmptyUIComponentGroupStylePropertiesOverwrittenLook {
    
    public init?(look: Self?, overwrittenBy newLook: EmptyUIComponentGroupStylePropertiesOverwrittenLook?) {
        return nil
    }
}
