//
//  Created by Łukasz Osiennik on 04/08/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
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
