//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIElementComponentParams:
    GUIElementParams,
    GUIPropertyDefaultValueInterface {}

extension GUIElementComponentParams {
    
    static func structName(
        dot propertyName: String
    ) -> String {
        return structName.appending(
            "."
        ).appending(
            propertyName
        )
    }
    
    static var structName: String {
        return .init(
            describing: self
        )
    }
}
