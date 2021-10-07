//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelGUIComponentParams:
    GUIComponentParams,
    GUIElementComponentParamsLocalizationStrings {
    
    public let strings: LocalizationStrings
    
    public static var `default`: Self {
        return .init(
            strings: .init(
                text: structName(
                    dot: "text"
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

extension LabelGUIComponentParams {
    
    public struct LocalizationStrings:
        LocalizationStringsInterface {
        
        public let text: String
        
        public init(
            text: String
        ) {
            self.text = text
        }
    }
}
