//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum UISystemStyleType:
    Hashable {
    
    case app(UIAppStyleType)
    case dev(UIDevStyleType)
}

extension UISystemStyleType {
    
    public static var app: Self {
        return .app(.default)
    }
    
    public static var dev: Self {
        return .dev(.default)
    }
}
