//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class ButtonUIComponent: UIButton, ButtonUIComponentInterface {
    
    public var settings: ButtonUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: ButtonUIComponentSettings = .default) {
        self.settings = settings
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupParams() {
        setupParams(for: self)
    }
    
    public func setupStyleLook() {
        setupStyleLook(for: self)
    }
    
    public func setupStyleLayout() {
        setupStyleLayout(for: self)
    }
}
