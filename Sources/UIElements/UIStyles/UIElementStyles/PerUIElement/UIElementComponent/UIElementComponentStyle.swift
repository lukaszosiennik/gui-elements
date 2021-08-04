//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct UIElementComponentStyle<PropertiesType: UIElementComponentStyleProperties>: UIElementStyle {
    
    let type: UIStyleType
    let properties: PropertiesType?
}
