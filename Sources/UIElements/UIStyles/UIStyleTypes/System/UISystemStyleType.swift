//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum UISystemStyleType: Hashable {
    
    case app(UIAppStyleType)
    case dev(UIDevStyleType)
}

extension UISystemStyleType {
    
    public static var app: UISystemStyleType {
        return .app(.default)
    }
    
    public static var dev: UISystemStyleType {
        return .dev(.default)
    }
}
