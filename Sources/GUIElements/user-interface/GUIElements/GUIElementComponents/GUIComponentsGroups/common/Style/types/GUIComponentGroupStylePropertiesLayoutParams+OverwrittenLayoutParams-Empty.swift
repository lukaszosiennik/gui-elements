//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

extension GUIComponentGroupStylePropertiesLayoutParams
where
    OverwrittenLayoutParams
        == EmptyGUIComponentGroupStylePropertiesOverwrittenLayoutParams {
    
    public init?(
        layoutParams: Self?,
        overwrittenBy newLayoutParams: EmptyGUIComponentGroupStylePropertiesOverwrittenLayoutParams?
    ) {
        return nil
    }
}
