//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelGUIComponentStylePropertiesLookParams:
    GUIComponentStylePropertiesLookParams {
    
    public let linesNumber: Int
    
    public init(
        linesNumber: Int
    ) {
        self.linesNumber = linesNumber
    }
    
    public init?(
        lookParams: Self?,
        overwrittenBy newLookParams: LabelGUIComponentStylePropertiesOverwrittenLookParams?
    ) {
        guard let linesNumber = newLookParams?.linesNumber ?? lookParams?.linesNumber
        else {
            return nil
        }
        
        self.linesNumber = linesNumber
    }
}
