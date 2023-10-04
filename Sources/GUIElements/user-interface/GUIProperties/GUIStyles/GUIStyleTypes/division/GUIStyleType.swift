//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public enum GUIStyleType:
    Hashable {
    
    case custom
    
    case os(_ configuration: GUIElementComponentOSConfiguration)
    case system(GUISystemStyleType)
}

extension GUIStyleType {
    
    public static var os: Self {
        return .os(
            preferredLayoutParams: false
        )
    }
    
    public static func os(
        preferredLayoutParams: Bool
    ) -> Self {
        return .os(
            .init(
                lookConfiguration: .init(
                    isUserFriendly: true
                ),
                layoutParamsConfiguration: .init(
                    isPreferred: preferredLayoutParams
                )
            )
        )
    }
}

extension GUIStyleType {
    
    var isOS: Bool {
        guard case .os = self
        else {
            return false
        }
        
        return true
    }
}
