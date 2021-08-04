//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

enum UISystemStyleType: Hashable {
    
    case app(UIAppStyleType)
    case dev(UIDevStyleType)
}

extension UISystemStyleType {
    
    static var app: UISystemStyleType {
        return .app(.default)
    }
    
    static var dev: UISystemStyleType {
        return .dev(.default)
    }
}
