//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class LabelUIComponent:
    UILabel,
    UIComponent {

    public let initialization: UIElementComponentInitialization = .init()
    
    public var settings: LabelUIComponentSettings {
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
        settings: LabelUIComponentSettings
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
        _ params: LabelUIComponentParams
    ) {
        text = params.text
    }
}

extension LabelUIComponent {
    
    public func setupStyleLookOSConfiguration(
        _ lookConfiguration: UIElementComponentLookOSConfiguration
    ) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookOS(
        _ look: EmptyUIComponentStylePropertiesOSLook
    ) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookSystem(
        _ look: LabelUIComponentStylePropertiesSystemLook
    ) {
        textColor = look.textColor
    }
    
    private func setupStyleLookOS() {
        let tempLabel: UILabel = .init()
        textColor = tempLabel.textColor
    }
}

extension LabelUIComponent {
    
    public func setupStyleLookParamsOS() {
        let tempLabel: UILabel = .init()
        numberOfLines = tempLabel.numberOfLines
    }
    
    public func setupStyleLookParamsSystem(
        _ lookParams: LabelUIComponentStylePropertiesLookParams
    ) {
        numberOfLines = lookParams.linesNumber
    }
}

extension LabelUIComponent {
    
    public func setupStyleLayoutInitialization() {}
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(
        _ layoutParams: LabelUIComponentStylePropertiesLayoutParams
    ) {}
}
