//
//  Created by Łukasz Osiennik on 26/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct ButtonUIComponentStylePropertiesOSLook:
    UIComponentStylePropertiesOSLook {
    
    public let buttonStyleType: ButtonUIComponentOSStyleType
    
    public static var `default`: Self {
        return .init(
            buttonStyleType: .default
        )
    }
    
    public init(
        buttonStyleType: ButtonUIComponentOSStyleType
    ) {
        self.buttonStyleType = buttonStyleType
    }
}
