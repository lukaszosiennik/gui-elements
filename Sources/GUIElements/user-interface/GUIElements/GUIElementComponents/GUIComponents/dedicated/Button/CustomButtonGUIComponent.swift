//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class CustomButtonGUIComponent:
    UIButton,
    ButtonGUIComponentInterface {

    public let initialization: GUIElementComponentInitialization = .init()
    
    public var settings: ButtonGUIComponentSettings {
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
        settings: ButtonGUIComponentSettings
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
        _ params: ButtonGUIComponentParams
    ) {
        setupParams(
            params,
            for: self
        )
    }
}

extension CustomButtonGUIComponent {
    
    public func setupStyleLookOSConfiguration(
        _ lookConfiguration: GUIElementComponentLookOSConfiguration
    ) {
        setupStyleLookOSConfiguration(
            lookConfiguration,
            for: self
        )
    }
    
    public func setupStyleLookOS(
        _ look: ButtonGUIComponentStylePropertiesOSLook
    ) {
        setupStyleLookOS(
            look,
            for: self
        )
    }
    
    public func setupStyleLookSystem(
        _ look: ButtonGUIComponentStylePropertiesSystemLook
    ) {
        setupStyleLookSystem(
            look,
            for: self
        )
    }
}

extension CustomButtonGUIComponent {
    
    public func setupStyleLookParamsOS() {
        setupStyleLookParamsOS(
            for: self
        )
    }
    
    public func setupStyleLookParamsSystem(
        _ lookParams: EmptyGUIComponentStylePropertiesLookParams
    ) {
        setupStyleLookParamsSystem(
            lookParams,
            for: self
        )
    }
}

extension CustomButtonGUIComponent {
    
    public func setupStyleLayoutInitialization() {
        setupStyleLayoutInitialization(
            for: self
        )
    }
    
    public func setupStyleLayoutOS() {
        setupStyleLayoutOS(
            for: self
        )
    }
    
    public func setupStyleLayoutSystem(
        _ layoutParams: ButtonGUIComponentStylePropertiesLayoutParams
    ) {
        setupStyleLayoutSystem(
            layoutParams,
            for: self
        )
    }
}
