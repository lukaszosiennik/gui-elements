//
//  Created by Łukasz Osiennik on 31/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUILayoutStyleProperties:
    GUIElementStyleProperties {
    
    associatedtype GUILayoutStylePropertiesParamsType:
        GUILayoutStylePropertiesParams
    
    var params: GUILayoutStylePropertiesParamsType {
        get
    }
    
    init?(
        styleType: GUIStyleType?,
        params: GUILayoutStylePropertiesParamsType
    )
}
