//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol GUIComponentScreen:
    GUIElementComponent
where
    Settings
        : GUIComponentScreenSettings {
    
    func setupScreenStyleLookOS()
}

extension GUIComponentScreen {
    
    public func setupStyleLookOSConfiguration(
        _ lookConfiguration: GUIElementComponentLookOSConfiguration
    ) {
        setupStyleLookOSForUserFriendliness(
            lookConfiguration.isUserFriendly
        )
        
        setupScreenStyleLookOS()
    }
    
    private func setupStyleLookOSForUserFriendliness(
        _ isUserFriendly: Bool
    ) {
        if isUserFriendly {
            backgroundColor = .white
        } else {
            let tempView: UIView = .init()
            backgroundColor = tempView.backgroundColor
        }
    }
}
