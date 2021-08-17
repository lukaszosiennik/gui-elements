//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct EmptyUIComponentStylePropertiesLookParams: UIComponentStylePropertiesLookParams {
    
    init() {}
    
    public init?(lookParams: Self?, overwrittenBy newLookParams: EmptyUIComponentStylePropertiesOverwrittenLookParams?) {
        return nil
    }
}
