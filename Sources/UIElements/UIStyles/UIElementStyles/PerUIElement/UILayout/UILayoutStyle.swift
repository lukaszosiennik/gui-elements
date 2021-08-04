//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct UILayoutStyle<PropertiesType: UILayoutStyleProperties>: UIElementStyle {
    
    let type: UIStyleType
    let properties: PropertiesType?
}
