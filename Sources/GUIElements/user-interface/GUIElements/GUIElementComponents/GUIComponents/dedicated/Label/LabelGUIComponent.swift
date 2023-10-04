//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class LabelGUIComponent:
    UILabel,
    GUIComponent {

    public let initialization: GUIElementComponentInitialization = .init()
    
    public var settings: LabelGUIComponentSettings {
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
        settings: LabelGUIComponentSettings
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
        _ params: LabelGUIComponentParams
    ) {
        text = params.strings.text
    }
}

extension LabelGUIComponent {
    
    public func setupStyleLookOSConfiguration(
        _ lookConfiguration: GUIElementComponentLookOSConfiguration
    ) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookOS(
        _ look: EmptyGUIComponentStylePropertiesOSLook
    ) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookSystem(
        _ look: LabelGUIComponentStylePropertiesSystemLook
    ) {
        textColor = look.textColor
    }
    
    private func setupStyleLookOS() {
        let tempLabel: UILabel = .init()
        textColor = tempLabel.textColor
    }
}

extension LabelGUIComponent {
    
    public func setupStyleLookParamsOS() {
        let tempLabel: UILabel = .init()
        numberOfLines = tempLabel.numberOfLines
    }
    
    public func setupStyleLookParamsSystem(
        _ lookParams: LabelGUIComponentStylePropertiesLookParams
    ) {
        numberOfLines = lookParams.linesNumber
    }
}

extension LabelGUIComponent {
    
    public func setupStyleLayoutInitialization() {}
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(
        _ layoutParams: LabelGUIComponentStylePropertiesLayoutParams
    ) {}
}
