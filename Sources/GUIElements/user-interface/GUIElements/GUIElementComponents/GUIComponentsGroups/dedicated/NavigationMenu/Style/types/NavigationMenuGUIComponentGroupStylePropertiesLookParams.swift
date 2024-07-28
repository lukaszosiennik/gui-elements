//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct NavigationMenuGUIComponentGroupStylePropertiesLookParams:
    GUIComponentGroupStylePropertiesLookParams {
    
    public let titleLinesNumber: Int
    
    public static var `default`: Self? {
        return .init(
            titleLinesNumber: DefaultConstantPalette.NavigationMenu.GUILookParams.title_linesNumber_0
        )
    }
    
    public init(
        titleLinesNumber: Int
    ) {
        self.titleLinesNumber = titleLinesNumber
    }
    
    public init?(
        lookParams: Self?,
        overwrittenBy newLookParams: NavigationMenuGUIComponentGroupStylePropertiesOverwrittenLookParams?
    ) {
        guard let titleLinesNumber = newLookParams?.titleLinesNumber ?? lookParams?.titleLinesNumber
        else {
            return nil
        }
        
        self.titleLinesNumber = titleLinesNumber
    }
}
