//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct InformationUIComponentScreenParams:
    UIComponentScreenParams {
    
    public let title: String
    
    public static var `default`: Self {
        return .init(
            title: structName(
                dot: "title"
            )
        )
    }
    
    public init(
        title: String
    ) {
        self.title = title
    }
}
