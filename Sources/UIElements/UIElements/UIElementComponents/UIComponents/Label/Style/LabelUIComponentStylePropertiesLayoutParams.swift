//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelUIComponentStylePropertiesLayoutParams: UIComponentStylePropertiesLayoutParams {
    
    public let linesNumber: Int
    
    init(linesNumber: Int) {
        self.linesNumber = linesNumber
    }
    
    init(layoutParams: LabelUIComponentStylePropertiesLayoutParams, overwrittenBy newLayoutParams: LabelUIComponentStylePropertiesOverwrittenLayoutParams?) {
        self.linesNumber = newLayoutParams?.linesNumber ?? layoutParams.linesNumber
    }
}

public struct LabelUIComponentStylePropertiesOverwrittenLayoutParams: UIComponentStylePropertiesLayoutParams {
    
    public let linesNumber: Int?
    
    init(linesNumber: Int? = nil) {
        self.linesNumber = linesNumber
    }
}
