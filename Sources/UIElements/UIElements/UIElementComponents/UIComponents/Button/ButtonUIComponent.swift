//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class ButtonUIComponent: UIButton, ButtonUIComponentInterface {

    public var initialization: Bool = false
    
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
    
    public func setupNestedSettings() {}
    
    public func setupParams(_ params: ButtonUIComponentParams) {
        setupParams(params, for: self)
    }
    
    public func setupStyleLook(_ look: ButtonUIComponentStylePropertiesLook?) {
        setupStyleLook(look, for: self)
    }
    
    public func setupStyleLookParams(_ lookParams: EmptyUIComponentStylePropertiesLookParams?) {
        setupStyleLookParams(lookParams, for: self)
    }
    
    public func setupStyleLayout(_ layoutParams: ButtonUIComponentStylePropertiesLayoutParams?) {
        setupStyleLayout(layoutParams, for: self)
    }
}
