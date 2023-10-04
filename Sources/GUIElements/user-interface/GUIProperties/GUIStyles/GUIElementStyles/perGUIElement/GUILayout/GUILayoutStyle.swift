//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct GUILayoutStyle<
    PropertiesType:
        GUILayoutStyleProperties
>:
    GUIElementStyle {
    
    public let type: GUIStyleType
    let properties: PropertiesType?
}
