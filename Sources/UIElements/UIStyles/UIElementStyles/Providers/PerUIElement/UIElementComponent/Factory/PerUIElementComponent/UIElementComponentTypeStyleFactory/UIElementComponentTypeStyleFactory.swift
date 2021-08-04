//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

class UIElementComponentTypeStyleFactory: UIElementComponentTypeStyleFactoryInterface {
    
    let styleType: UIStyleType
    
    required init(owner: UIElementStyleFactoryInterface) {
        self.styleType = owner.styleType
    }
}
