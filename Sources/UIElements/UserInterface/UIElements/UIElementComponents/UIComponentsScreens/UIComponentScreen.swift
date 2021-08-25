//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol UIComponentScreen: UIElementComponent where
    UIElementComponentSettingsType: UIComponentScreenSettings {
    
    func setupScreenStyleLookOS()
}

extension UIComponentScreen {
    
    public func setupStyleLookOS(_ look: OSUIElementComponentStylePropertiesLook) {
        setupStyleLookOSForUserFriendliness(look.isUserFriendly)
        
        setupScreenStyleLookOS()
    }
    
    private func setupStyleLookOSForUserFriendliness(_ isUserFriendly: Bool) {
        if isUserFriendly {
            backgroundColor = .white
        } else {
            let tempView = UIView()
            backgroundColor = tempView.backgroundColor
        }
    }
}
