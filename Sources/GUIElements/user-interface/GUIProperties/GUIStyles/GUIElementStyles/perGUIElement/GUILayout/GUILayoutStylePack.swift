//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public struct GUILayoutStylePack<
    StylePropertiesType:
        GUILayoutStyleProperties
> {
    
    let factory: GUIElementStyleFactoryInterface?
    let style: GUILayoutStyle<
        StylePropertiesType
    >
}
