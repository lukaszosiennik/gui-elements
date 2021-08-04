//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol ButtonUIComponentInterface: UIComponent where UIComponentSettingsType == ButtonUIComponentSettings, Self: UIView {}

extension ButtonUIComponentInterface {
    
    func setup() {
        setupSettings()
    }
    
    func setupParams(for button: UIButton) {
        button.setTitle(settings.params.title, for: .normal)
    }
    
    func setupStyleLook(for button: UIButton) {
        guard let styleLook = settings.stylePack.style.properties?.look else {
            return
        }
        
        button.setTitleColor(styleLook.titleColor, for: .normal)
    }
    
    func setupStyleLayout(for button: UIButton) {
        translatesAutoresizingMaskIntoConstraints = false
        
        guard let styleLayoutParams = settings.stylePack.style.properties?.layoutParams else {
            return
        }
    }
}
