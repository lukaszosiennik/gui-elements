//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class LabelUIComponent: UILabel, UIComponent {
    
    public var settings: LabelUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: LabelUIComponentSettings = .default) {
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
    
    public func setupParams() {
        text = settings.params.text
    }
    
    public func setupStyleLook() {
        guard let styleLook = settings.stylePack.style.properties?.look else {
            return
        }
    }
    
    public func setupStyleLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        
        guard let styleLayoutParams = settings.stylePack.style.properties?.layoutParams else {
            return
        }
    }
}
