//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelGUIComponentParams:
    GUIComponentParams {
    
    public let text: String
    
    public static var `default`: Self {
        return .init(
            text: structName(
                dot: "text"
            )
        )
    }
    
    public init(
        text: String
    ) {
        self.text = text
    }
}
