//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class TextFieldUIComponent:
    UITextField,
    UIComponent {

    public let initialization: UIElementComponentInitialization = .init()
    
    public var settings: TextFieldUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    public convenience init() {
        self.init(settings: .default)
    }
    
    public init(settings: TextFieldUIComponentSettings) {
        self.settings = settings
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupNestedSettings() {}
    
    public func setupParams(_ params: TextFieldUIComponentParams) {}
}

extension TextFieldUIComponent {
    
    public func setupStyleLookOSConfiguration(_ lookConfiguration: UIElementComponentLookOSConfiguration) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookOS(_ look: TextFieldUIComponentStylePropertiesOSLook) {
        borderStyle = look.borderStyle
    }
    
    public func setupStyleLookSystem(_ look: TextFieldUIComponentStylePropertiesSystemLook) {
        setupStyleLookOS()
    }
    
    private func setupStyleLookOS() {
        let tempTextField: UITextField = .init()
        borderStyle = tempTextField.borderStyle
    }
}

extension TextFieldUIComponent {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentStylePropertiesLookParams) {}
}

extension TextFieldUIComponent {
    
    public func setupStyleLayoutInitialization() {}
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(_ layoutParams: TextFieldUIComponentStylePropertiesLayoutParams) {}
}
