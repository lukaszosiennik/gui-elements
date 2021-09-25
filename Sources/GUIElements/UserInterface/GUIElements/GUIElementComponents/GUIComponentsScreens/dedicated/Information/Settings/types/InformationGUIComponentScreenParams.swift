//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct InformationGUIComponentScreenParams:
    GUIComponentScreenParams {
    
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
    
    public struct LocalizationStrings {
        
        public let title: String
        
        public init(
            title: String
        ) {
            self.title = title
        }
    }
}
