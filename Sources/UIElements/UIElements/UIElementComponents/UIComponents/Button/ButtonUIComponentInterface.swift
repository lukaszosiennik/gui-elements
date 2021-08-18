//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol ButtonUIComponentInterface: UIComponent where UIElementComponentSettingsType == ButtonUIComponentSettings {}

extension ButtonUIComponentInterface {
    
    func setupParams(for button: UIButton) {
        button.setTitle(settings.params.title, for: .normal)
    }
    
    func setupStyleLook(for button: UIButton) {
        guard let look = settings.styleProperties?.look else {
            let tempButton = UIButton(type: button.buttonType)
            button.setTitleColor(tempButton.titleColor(for: .normal), for: .normal)
            return
        }
        
        button.setTitleColor(look.titleColor, for: .normal)
    }
    
    func setupStyleLookParams(for button: UIButton) {
        guard let lookParams = settings.styleProperties?.lookParams else {
            return
        }
    }
    
    func setupStyleLayout(for button: UIButton) {
        if initialization {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        guard let layoutParams = settings.styleProperties?.layoutParams else {
            return
        }
    }
}
