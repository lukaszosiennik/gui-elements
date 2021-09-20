//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class TextAreaUIComponent:
    UITextView,
    UIComponent {

    public let initialization: UIElementComponentInitialization = .init()
    
    public var settings: TextAreaUIComponentSettings {
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
        settings: TextAreaUIComponentSettings
    ) {
        self.settings = settings
        super.init(
            frame: .zero,
            textContainer: nil
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
        _ params: TextAreaUIComponentParams
    ) {}
}

extension TextAreaUIComponent {
    
    public func setupStyleLookOSConfiguration(
        _ lookConfiguration: UIElementComponentLookOSConfiguration
    ) {}
    
    public func setupStyleLookOS(
        _ look: EmptyUIComponentStylePropertiesOSLook
    ) {}
    
    public func setupStyleLookSystem(
        _ look: TextAreaUIComponentStylePropertiesSystemLook
    ) {}
}

extension TextAreaUIComponent {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(
        _ lookParams: EmptyUIComponentStylePropertiesLookParams
    ) {}
}

extension TextAreaUIComponent {
    
    public func setupStyleLayoutInitialization() {}
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(
        _ layoutParams: TextAreaUIComponentStylePropertiesLayoutParams
    ) {}
}
