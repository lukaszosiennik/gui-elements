//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct NavigationMenuUIComponentGroupStylePropertiesLookParams: UIComponentGroupStylePropertiesLookParams {
    
    public let titleLinesNumber: Int
    
    public static var `default`: Self? {
        return .init(
            titleLinesNumber: DefaultConstantPalette.NavigationMenu.UILookParams.title_linesNumber_0
        )
    }
    
    public init(titleLinesNumber: Int) {
        self.titleLinesNumber = titleLinesNumber
    }
    
    public init?(
        lookParams: Self?,
        overwrittenBy newLookParams: NavigationMenuUIComponentGroupStylePropertiesOverwrittenLookParams?
    ) {
        guard let titleLinesNumber = newLookParams?.titleLinesNumber ?? lookParams?.titleLinesNumber else {
            return nil
        }
        
        self.titleLinesNumber = titleLinesNumber
    }
}
