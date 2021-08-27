//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct EmptyUIComponentGroupStylePropertiesLookParams: UIComponentGroupStylePropertiesLookParams {
    
    init() {}
    
    public init?(
        lookParams: Self?,
        overwrittenBy newLookParams: EmptyUIComponentGroupStylePropertiesOverwrittenLookParams?
    ) {
        return nil
    }
}
