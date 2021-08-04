//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

final class ButtonUIComponent: UIButton, ButtonUIComponentInterface {
    
    var settings: ButtonUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    init(settings: ButtonUIComponentSettings = .default) {
        self.settings = settings
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupParams() {
        setupParams(for: self)
    }
    
    func setupStyleLook() {
        setupStyleLook(for: self)
    }
    
    func setupStyleLayout() {
        setupStyleLayout(for: self)
    }
}
