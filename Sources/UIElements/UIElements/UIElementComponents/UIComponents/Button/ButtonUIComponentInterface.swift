//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol ButtonUIComponentInterface: UIComponent where UIElementComponentSettingsType == ButtonUIComponentSettings {}

extension ButtonUIComponentInterface {
    
    func setupParams(_ params: ButtonUIComponentParams,for button: UIButton) {
        button.setTitle(params.title, for: .normal)
    }
}

extension ButtonUIComponentInterface {
    
    func setupStyleLookOS(_ lookUserFriendly: UIElementComponentStylePropertiesLookUserFriendlyInterface, for button: UIButton) {
        let tempButton = UIButton(type: button.buttonType)
        button.setTitleColor(tempButton.titleColor(for: .normal), for: .normal)
    }
    
    func setupStyleLookSystem(_ look: ButtonUIComponentStylePropertiesLook, for button: UIButton) {
        button.setTitleColor(look.titleColor, for: .normal)
    }
}

extension ButtonUIComponentInterface {
    
    func setupStyleLookParamsOS(for button: UIButton) {}
    
    func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentStylePropertiesLookParams, for button: UIButton) {}
}

extension ButtonUIComponentInterface {
    
    func setupStyleLayoutInitialization(for button: UIButton) {}
    
    func setupStyleLayoutOS(for button: UIButton) {}
    
    func setupStyleLayoutSystem(_ layoutParams: ButtonUIComponentStylePropertiesLayoutParams, for button: UIButton) {}
}
