//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public struct GUILayoutStyle<
    PropertiesType:
        GUILayoutStyleProperties
>:
    GUIElementStyle {
    
    public let type: GUIStyleType
    let properties: PropertiesType?
}
