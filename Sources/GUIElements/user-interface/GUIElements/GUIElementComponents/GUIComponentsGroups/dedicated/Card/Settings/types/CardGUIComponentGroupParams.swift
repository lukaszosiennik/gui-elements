//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct CardGUIComponentGroupParams:
    GUIComponentGroupParams,
    GUIElementComponentParamsLocalizationStrings {
    
    public let strings: LocalizationStrings
    
    public static var `default`: Self {
        return .init(
            strings: .init(
                title: structName(
                    dot: "title"
                )
            )
        )
    }
    
    public init(
        strings: LocalizationStrings
    ) {
        self.strings = strings
    }
}

extension CardGUIComponentGroupParams {
    
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
