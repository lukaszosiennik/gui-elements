//
//  Created by Łukasz Osiennik on 31/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public protocol GUILayoutStyleProperties:
    GUIElementStyleProperties {
    
    associatedtype Params:
        GUILayoutStylePropertiesParams
    
    var params: Params {
        get
    }
    
    init?(
        styleType: GUIStyleType?,
        params: Params
    )
}
