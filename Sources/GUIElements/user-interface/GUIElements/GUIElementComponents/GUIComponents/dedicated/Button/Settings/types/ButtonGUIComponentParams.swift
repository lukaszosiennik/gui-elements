//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public struct ButtonGUIComponentParams:
    GUIComponentParams,
    GUIElementComponentParamsLocalizationStrings,
    InputGUIElementComponentParamsPlainActionInterface {
    
    public let strings: LocalizationStrings
    
    public let action: Action?
    
    public static var `default`: Self {
        return .init(
            strings: .init(
                title: structName(
                    dot: "title"
                )
            ),
            action: nil
        )
    }
    
    public init(
        strings: LocalizationStrings,
        action: Action?
    ) {
        self.strings = strings
        self.action = action
    }
}

extension ButtonGUIComponentParams {
    
    public struct LocalizationStrings:
        LocalizationStringsInterface {
        
        public let title: String
        
        public init(
            title: String
        ) {
            self.title = title
        }
    }
}
