//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum UIStyleType: Hashable {
    
    case os(_ styleProperties: OSUIElementComponentStyleProperties)
    case system(UISystemStyleType)
}

extension UIStyleType {
    
    public static var os: Self {
        return .os(defaultLayoutParams: false)
    }
    
    public static func os(defaultLayoutParams: Bool) -> Self {
        return .os(
            .init(
                look: .init(
                    isUserFriendly: true
                ),
                layoutParams: .init(
                    isDefault: defaultLayoutParams
                )
            )
        )
    }
}
