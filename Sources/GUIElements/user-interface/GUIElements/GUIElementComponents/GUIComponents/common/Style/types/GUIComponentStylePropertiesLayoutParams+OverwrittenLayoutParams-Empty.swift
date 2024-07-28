//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

extension GUIComponentStylePropertiesLayoutParams
where
    OverwrittenLayoutParams
        == EmptyGUIComponentStylePropertiesOverwrittenLayoutParams {
    
    public init?(
        layoutParams: Self?,
        overwrittenBy newLayoutParams: EmptyGUIComponentStylePropertiesOverwrittenLayoutParams?
    ) {
        return nil
    }
}
