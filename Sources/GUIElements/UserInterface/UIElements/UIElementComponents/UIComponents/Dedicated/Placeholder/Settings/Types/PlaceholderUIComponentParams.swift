//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct PlaceholderUIComponentParams:
    UIComponentParams {
    
    public let look: PlaceholderUIComponentParamsPropertiesLook?
    public let layoutParams: PlaceholderUIComponentParamsPropertiesLayoutParams?
    
    public static var `default`: Self {
        return .init(
            look: nil,
            layoutParams: nil
        )
    }
    
    public init(
        look: PlaceholderUIComponentParamsPropertiesLook? = nil,
        layoutParams: PlaceholderUIComponentParamsPropertiesLayoutParams?
    ) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
