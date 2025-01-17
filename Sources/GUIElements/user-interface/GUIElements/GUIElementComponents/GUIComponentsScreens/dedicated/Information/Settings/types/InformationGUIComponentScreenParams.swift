//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public struct InformationGUIComponentScreenParams:
    GUIComponentScreenParams,
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

extension InformationGUIComponentScreenParams {
    
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
