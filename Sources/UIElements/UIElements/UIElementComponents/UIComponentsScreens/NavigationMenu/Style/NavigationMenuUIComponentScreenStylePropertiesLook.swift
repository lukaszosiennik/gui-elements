//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct NavigationMenuUIComponentScreenStylePropertiesLook: UIComponentScreenStylePropertiesLook {
    
    public let backgroundColor: UIColor
    
    init(backgroundColor: UIColor) {
        self.backgroundColor = backgroundColor
    }
    
    public init?(look: Self?, overwrittenBy newLook: EmptyUIComponentScreenStylePropertiesOverwrittenLook?) {
        return nil
    }
}
