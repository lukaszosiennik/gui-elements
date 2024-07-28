//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct LabelGUIComponentStylePropertiesOverwrittenLookParams:
    GUIComponentStylePropertiesOverwrittenLookParams {
    
    public let linesNumber: Int?
    
    init(
        linesNumber: Int? = nil
    ) {
        self.linesNumber = linesNumber
    }
}
