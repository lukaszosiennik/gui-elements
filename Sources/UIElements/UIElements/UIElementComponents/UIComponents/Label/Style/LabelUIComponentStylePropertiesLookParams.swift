//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelUIComponentStylePropertiesLookParams: UIComponentStylePropertiesLookParams {
    
    public let linesNumber: Int
    
    init(linesNumber: Int) {
        self.linesNumber = linesNumber
    }
    
    init?(lookParams: LabelUIComponentStylePropertiesLookParams?, overwrittenBy newLookParams: LabelUIComponentStylePropertiesOverwrittenLookParams?) {
        guard let linesNumber = newLookParams?.linesNumber ?? lookParams?.linesNumber else {
            return nil
        }
        
        self.linesNumber = linesNumber
    }
}

public struct LabelUIComponentStylePropertiesOverwrittenLookParams: UIComponentStylePropertiesLookParams {
    
    public let linesNumber: Int?
    
    init(linesNumber: Int? = nil) {
        self.linesNumber = linesNumber
    }
}
