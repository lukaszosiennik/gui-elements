//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension UIComponentScreenStylePropertiesLook where UIElementComponentStylePropertiesOverwrittenLookType == EmptyUIComponentScreenStylePropertiesOverwrittenLook {
    
    public init?(look: Self?, overwrittenBy newLook: EmptyUIComponentScreenStylePropertiesOverwrittenLook?) {
        return nil
    }
}
