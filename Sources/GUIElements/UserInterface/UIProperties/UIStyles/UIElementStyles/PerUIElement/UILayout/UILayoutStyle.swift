//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UILayoutStyle<
    PropertiesType:
        UILayoutStyleProperties
>:
    UIElementStyle {
    
    public let type: UIStyleType
    let properties: PropertiesType?
}
