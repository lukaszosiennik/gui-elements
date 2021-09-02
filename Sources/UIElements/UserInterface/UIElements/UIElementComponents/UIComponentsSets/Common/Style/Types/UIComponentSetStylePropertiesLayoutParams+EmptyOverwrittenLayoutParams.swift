//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension UIComponentSetStylePropertiesLayoutParams
where
    UIElementComponentStylePropertiesOverwrittenLayoutParamsType
        == EmptyUIComponentSetStylePropertiesOverwrittenLayoutParams {
    
    public init?(
        layoutParams: Self?,
        overwrittenBy newLayoutParams: EmptyUIComponentSetStylePropertiesOverwrittenLayoutParams?
    ) {
        return nil
    }
}
