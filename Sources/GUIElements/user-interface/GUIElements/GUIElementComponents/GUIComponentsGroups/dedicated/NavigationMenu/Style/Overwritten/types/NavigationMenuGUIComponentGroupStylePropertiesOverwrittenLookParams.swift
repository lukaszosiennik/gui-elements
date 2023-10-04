//
//  Created by Łukasz Osiennik on 17/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuGUIComponentGroupStylePropertiesOverwrittenLookParams:
    GUIComponentGroupStylePropertiesOverwrittenLookParams {
    
    public let titleLinesNumber: Int?
    
    init(
        titleLinesNumber: Int? = nil
    ) {
        self.titleLinesNumber = titleLinesNumber
    }
}
