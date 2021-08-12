//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol ButtonUIComponentInterface: UIComponent where UIComponentSettingsType == ButtonUIComponentSettings, Self: UIView {
    
    var initialization: Bool { get }
}

extension ButtonUIComponentInterface {
    
    func setupParams(for button: UIButton) {
        button.setTitle(settings.params.title, for: .normal)
    }
    
    func setupStyleLook(for button: UIButton) {
        guard let styleProperties = settings.stylePack.style.properties else {
            let tempButton = UIButton(type: button.buttonType)
            button.setTitleColor(tempButton.titleColor(for: .normal), for: .normal)
            return
        }
        
        button.setTitleColor(styleProperties.look.titleColor, for: .normal)
    }
    
    func setupStyleLayout(for button: UIButton) {
        if initialization {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
    }
}
