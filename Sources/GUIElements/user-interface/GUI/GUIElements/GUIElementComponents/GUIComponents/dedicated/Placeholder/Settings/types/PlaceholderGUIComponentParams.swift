//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct PlaceholderGUIComponentParams:
    GUIComponentParams {
    
    public let look: PlaceholderGUIComponentParamsPropertiesLook?
    public let layoutParams: PlaceholderGUIComponentParamsPropertiesLayoutParams?
    
    public static var `default`: Self {
        return .init(
            look: nil,
            layoutParams: nil
        )
    }
    
    public init(
        look: PlaceholderGUIComponentParamsPropertiesLook? = nil,
        layoutParams: PlaceholderGUIComponentParamsPropertiesLayoutParams?
    ) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
