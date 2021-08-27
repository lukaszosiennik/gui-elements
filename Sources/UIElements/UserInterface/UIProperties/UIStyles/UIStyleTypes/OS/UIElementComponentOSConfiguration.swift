//
//  Created by Łukasz Osiennik on 20/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct UIElementComponentOSConfiguration: Hashable {
    
    let lookConfiguration: UIElementComponentLookOSConfiguration
    let layoutParamsConfiguration: UIElementComponentLayoutParamsOSConfiguration
    
    public init(
        lookConfiguration: UIElementComponentLookOSConfiguration,
        layoutParamsConfiguration: UIElementComponentLayoutParamsOSConfiguration
    ) {
        self.lookConfiguration = lookConfiguration
        self.layoutParamsConfiguration = layoutParamsConfiguration
    }
}

extension UIElementComponentOSConfiguration {
    
    var isLookUserFriendly: Bool {
        return lookConfiguration.isUserFriendly
    }
    
    var isLayoutParamsPreferred: Bool {
        return layoutParamsConfiguration.isPreferred
    }
}
