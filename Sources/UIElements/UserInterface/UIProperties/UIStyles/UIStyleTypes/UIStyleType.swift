//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum UIStyleType: Hashable {
    
    case custom
    
    case os(_ styleProperties: OSUIElementComponentStyleProperties)
    case system(UISystemStyleType)
}

extension UIStyleType {
    
    public static var os: Self {
        return .os(preferredLayoutParams: false)
    }
    
    public static func os(preferredLayoutParams: Bool) -> Self {
        return .os(
            .init(
                look: .init(
                    isUserFriendly: true
                ),
                layoutParams: .init(
                    isPreferred: preferredLayoutParams
                )
            )
        )
    }
}

extension UIStyleType {
    
    var isOS: Bool {
        guard case .os = self else {
            return false
        }
        
        return true
    }
}
