//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

import UIKit

public final class TextAreaGUIComponent:
    UITextView,
    GUIComponent {

    public let initialization: GUIElementComponentInitialization = .init()
    
    public var settings: TextAreaGUIComponentSettings {
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
        settings: TextAreaGUIComponentSettings
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
        _ params: TextAreaGUIComponentParams
    ) {}
}

extension TextAreaGUIComponent {
    
    public func setupStyleLookOSConfiguration(
        _ lookConfiguration: GUIElementComponentLookOSConfiguration
    ) {}
    
    public func setupStyleLookOS(
        _ look: EmptyGUIComponentStylePropertiesOSLook
    ) {}
    
    public func setupStyleLookSystem(
        _ look: TextAreaGUIComponentStylePropertiesSystemLook
    ) {}
}

extension TextAreaGUIComponent {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(
        _ lookParams: EmptyGUIComponentStylePropertiesLookParams
    ) {}
}

extension TextAreaGUIComponent {
    
    public func setupStyleLayoutInitialization() {}
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(
        _ layoutParams: TextAreaGUIComponentStylePropertiesLayoutParams
    ) {}
}
