//
//  Created by Łukasz Osiennik on 01/11/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

import commons

extension MenuHierarchyNodeValue:
    EmptyDataInterface {
    
    public static var empty: Self {
        .init(
            strings: .empty
        )
    }
}

extension MenuHierarchyNodeValue:
    FatalErrorDataInterface {
    
    public static var fatalError: Self {
        .init(
            strings: .fatalError
        )
    }
}

extension MenuHierarchyNodeValue.LocalizationStrings:
    EmptyDataInterface {
    
    public static var empty: Self {
        .init(
            title: String.commons.empty
        )
    }
}

extension MenuHierarchyNodeValue.LocalizationStrings:
    FatalErrorDataInterface {
    
    public static var fatalError: Self {
        .init(
            title: String.commons.fatalError
        )
    }
}
