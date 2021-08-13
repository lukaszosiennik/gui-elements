//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelUIComponentStylePropertiesLayoutParams: UIComponentStylePropertiesLayoutParams {
    
    init() {}
    
    init?(layoutParams: LabelUIComponentStylePropertiesLayoutParams?, overwrittenBy newLayoutParams: LabelUIComponentStylePropertiesOverwrittenLayoutParams?) {
        guard let layoutParams = layoutParams else {
            return nil
        }
    }
}

public struct LabelUIComponentStylePropertiesOverwrittenLayoutParams: UIComponentStylePropertiesLayoutParams {
    
    init() {}
}
