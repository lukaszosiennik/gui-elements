//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class ButtonUIComponent: UIButton, ButtonUIComponentInterface {

    public let initialization = UIElementComponentInitialization()
    
    public var settings: ButtonUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    public convenience init() {
        self.init(settings: .default)
    }
    
    public init(settings: ButtonUIComponentSettings) {
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
}

extension ButtonUIComponent {
    
    public func setupStyleLookOS(_ look: OSUIElementComponentStylePropertiesLook) {
        setupStyleLookOS(look, for: self)
    }
    
    public func setupStyleLookSystem(_ look: ButtonUIComponentStylePropertiesLook) {
        setupStyleLookSystem(look, for: self)
    }
}

extension ButtonUIComponent {
    
    public func setupStyleLookParamsOS() {
        setupStyleLookParamsOS(for: self)
    }
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentStylePropertiesLookParams) {
        setupStyleLookParamsSystem(lookParams, for: self)
    }
}

extension ButtonUIComponent {
    
    public func setupStyleLayoutInitialization() {
        setupStyleLayoutInitialization(for: self)
    }
    
    public func setupStyleLayoutOS() {
        setupStyleLayoutOS(for: self)
    }
    
    public func setupStyleLayoutSystem(_ layoutParams: ButtonUIComponentStylePropertiesLayoutParams) {
        setupStyleLayoutSystem(layoutParams, for: self)
    }
}
