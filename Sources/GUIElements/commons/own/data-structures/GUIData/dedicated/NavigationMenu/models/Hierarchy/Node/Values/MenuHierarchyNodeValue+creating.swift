//
//  Created by Łukasz Osiennik on 01/11/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

import commons

extension MenuHierarchyNodeValue:
    BasicGroupedInitDataInterface {
    
    public static var initAsEmpty: Self {
        .init(
            strings: .initAsEmpty
        )
    }
    
    public static var initAsFatalError: Self {
        .init(
            strings: .initAsFatalError
        )
    }
    
    public static var initAsMock: Self {
        .init(
            strings: .initAsMock
        )
    }
}

extension MenuHierarchyNodeValue.LocalizationStrings:
    BasicGroupedInitDataInterface {
    
    public static var initAsEmpty: Self {
        .init(
            title: String.commons.initAsEmpty
        )
    }
    
    public static var initAsFatalError: Self {
        .init(
            title: String.commons.initAsFatalError
        )
    }
    
    public static var initAsMock: Self {
        .init(
            title: String.commons.initAsMock
        )
    }
}
