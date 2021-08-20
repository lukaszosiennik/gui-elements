//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIElementComponentStyle<PropertiesType: UIElementComponentStyleProperties>: UIElementStyle {
    
    public let type: UIStyleType
    let properties: PropertiesType
}
