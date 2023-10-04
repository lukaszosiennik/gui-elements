//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class PlaceholderGUIComponent:
    UIView,
    GUIComponent {
    
    private let heightConstraintID: String = "height"
    
    public let initialization: GUIElementComponentInitialization = .init()
    
    public var settings: PlaceholderGUIComponentSettings {
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
        settings: PlaceholderGUIComponentSettings
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
        _ params: PlaceholderGUIComponentParams
    ) {}
}

extension PlaceholderGUIComponent {
    
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
        _ look: PlaceholderGUIComponentStylePropertiesSystemLook
    ) {
        backgroundColor = settings.params.look?.color
    }
    
    private func setupStyleLookOS() {
        let tempView: UIView = .init()
        backgroundColor = settings.params.look?.color ?? tempView.backgroundColor
    }
}

extension PlaceholderGUIComponent {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(
        _ lookParams: EmptyGUIComponentStylePropertiesLookParams
    ) {}
}

extension PlaceholderGUIComponent {
    
    public func setupStyleLayoutInitialization() {}
    
    public func setupStyleLayoutOS() {
        if let height = settings.params.layoutParams?.height {
            setupStyleLayout(
                height
            )
            return
        }
        
        uie.removeConstraintIfExists(
            with: heightConstraintID
        )
    }
    
    public func setupStyleLayoutSystem(
        _ layoutParams: PlaceholderGUIComponentStylePropertiesLayoutParams
    ) {}
    
    private func setupStyleLayout(
        _ height: CGFloat
    ) {
        if let heightConstraint = uie.constraint(
            with: heightConstraintID
        ) {
            heightConstraint.constant = height
        } else {
            let heightConstraint = heightAnchor.constraint(
                equalToConstant: height
            )
            heightConstraint.identifier = heightConstraintID
            
            NSLayoutConstraint.activate([
                heightConstraint,
            ])
        }
    }
}
