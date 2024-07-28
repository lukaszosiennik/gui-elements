//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public struct InformationGUIComponentScreenStylePropertiesLookParams:
    GUIComponentScreenStylePropertiesLookParams {
    
    public let titleLinesNumber: Int
    
    public static var `default`: Self? {
        return .init(
            titleLinesNumber: DefaultConstantPalette.Information.GUILookParams.title_linesNumber_0
        )
    }
    
    public init(
        titleLinesNumber: Int
    ) {
        self.titleLinesNumber = titleLinesNumber
    }
}
