//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum UIStyleType: Hashable {
    
    case os(_ userFriendly: Bool)
    case system(UISystemStyleType)
}

extension UIStyleType {
    
    public static var os: Self {
        return .os(true)
    }
}
