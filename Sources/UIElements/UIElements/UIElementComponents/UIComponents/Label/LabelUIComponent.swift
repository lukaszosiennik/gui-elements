//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

final class LabelUIComponent: UILabel, UIComponent {
    
    var settings: LabelUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    init(settings: LabelUIComponentSettings = .default) {
        self.settings = settings
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupSettings()
    }
    
    func setupParams() {
        text = settings.params.text
    }
    
    func setupStyleLook() {
        guard let styleLook = settings.stylePack.style.properties?.look else {
            return
        }
    }
    
    func setupStyleLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        
        guard let styleLayoutParams = settings.stylePack.style.properties?.layoutParams else {
            return
        }
    }
}
