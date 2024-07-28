//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

import UIKit

public final class TextFieldGUIComponent:
    UITextField,
    GUIComponent {

    public let initialization: GUIElementComponentInitialization = .init()
    
    public var settings: TextFieldGUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    public convenience init() {
        self.init(
            settings: .default
        )
    }
    
    public init(
        settings: TextFieldGUIComponentSettings
    ) {
        self.settings = settings
        super.init(
            frame: .zero
        )
        
        setup()
    }
    
    required init?(
        coder: NSCoder
    ) {
        fatalError(
            "init(coder:) has not been implemented"
        )
    }
    
    public func setupNestedSettings() {}
    
    public func setupParams(
        _ params: TextFieldGUIComponentParams
    ) {}
}

extension TextFieldGUIComponent {
    
    public func setupStyleLookOSConfiguration(
        _ lookConfiguration: GUIElementComponentLookOSConfiguration
    ) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookOS(
        _ look: TextFieldGUIComponentStylePropertiesOSLook
    ) {
        borderStyle = look.borderStyle
    }
    
    public func setupStyleLookSystem(
        _ look: TextFieldGUIComponentStylePropertiesSystemLook
    ) {
        setupStyleLookOS()
    }
    
    private func setupStyleLookOS() {
        let tempTextField: UITextField = .init()
        borderStyle = tempTextField.borderStyle
    }
}

extension TextFieldGUIComponent {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(
        _ lookParams: EmptyGUIComponentStylePropertiesLookParams
    ) {}
}

extension TextFieldGUIComponent {
    
    public func setupStyleLayoutInitialization() {}
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(
        _ layoutParams: TextFieldGUIComponentStylePropertiesLayoutParams
    ) {}
}
