//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct GUIElementComponentOSConfiguration:
    Hashable {
    
    let lookConfiguration: GUIElementComponentLookOSConfiguration
    let layoutParamsConfiguration: GUIElementComponentLayoutParamsOSConfiguration
    
    public init(
        lookConfiguration: GUIElementComponentLookOSConfiguration,
        layoutParamsConfiguration: GUIElementComponentLayoutParamsOSConfiguration
    ) {
        self.lookConfiguration = lookConfiguration
        self.layoutParamsConfiguration = layoutParamsConfiguration
    }
}

extension GUIElementComponentOSConfiguration {
    
    var isLookUserFriendly: Bool {
        return lookConfiguration.isUserFriendly
    }
    
    var isLayoutParamsPreferred: Bool {
        return layoutParamsConfiguration.isPreferred
    }
}
