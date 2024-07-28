//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

extension GUIComponentSetStylePropertiesLayoutParams
where
    OverwrittenLayoutParams
        == EmptyGUIComponentSetStylePropertiesOverwrittenLayoutParams {
    
    public init?(
        layoutParams: Self?,
        overwrittenBy newLayoutParams: EmptyGUIComponentSetStylePropertiesOverwrittenLayoutParams?
    ) {
        return nil
    }
}
