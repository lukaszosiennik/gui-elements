//
//  Created by Łukasz Osiennik on 26/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct ButtonGUIComponentStylePropertiesOSLook:
    GUIComponentStylePropertiesOSLook {
    
    public let buttonStyleType: ButtonGUIComponentOSStyleType
    
    public static var `default`: Self {
        return .init(
            buttonStyleType: .default
        )
    }
    
    public init(
        buttonStyleType: ButtonGUIComponentOSStyleType
    ) {
        self.buttonStyleType = buttonStyleType
    }
}
