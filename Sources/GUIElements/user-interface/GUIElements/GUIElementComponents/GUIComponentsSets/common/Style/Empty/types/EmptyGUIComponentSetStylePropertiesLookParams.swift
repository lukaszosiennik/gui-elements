//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct EmptyGUIComponentSetStylePropertiesLookParams:
    GUIComponentSetStylePropertiesLookParams {
    
    init() {}
    
    public init?(
        lookParams: Self?,
        overwrittenBy newLookParams: EmptyGUIComponentSetStylePropertiesOverwrittenLookParams?
    ) {
        return nil
    }
}
