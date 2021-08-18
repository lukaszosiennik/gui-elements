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
    
    func setupStyleLook(_ look: ButtonUIComponentStylePropertiesLook?, for button: UIButton) {
        guard let look = look else {
            let tempButton = UIButton(type: button.buttonType)
            button.setTitleColor(tempButton.titleColor(for: .normal), for: .normal)
            return
        }
        
        button.setTitleColor(look.titleColor, for: .normal)
    }
    
    func setupStyleLookParams(_ lookParams: EmptyUIComponentStylePropertiesLookParams?, for button: UIButton) {
        guard let lookParams = lookParams else {
            return
        }
    }
    
    func setupStyleLayout(_ layoutParams: ButtonUIComponentStylePropertiesLayoutParams?, for button: UIButton) {
        if initialization {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        guard let layoutParams = layoutParams else {
            return
        }
    }
}
