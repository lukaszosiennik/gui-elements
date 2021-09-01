//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class ButtonUIComponent:
    UIView,
    ButtonUIComponentInterface {
    
    private(set) var button: UIButton = .init(
        type: .custom
    )
    
    public let initialization: UIElementComponentInitialization = .init()
    
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
    
    public func setupSettings() {
        self.button = .init(
            type: styleLookButtonType(
                from: settings.styleProperties.lookType
            )
        )
        
        setupNestedSettings()
        
        setupParams()
        setupStyle()
    }
    
    public func setupNestedSettings() {}
    
    public func setupParams() {
        setupParams(settings.params)
        
        setupActions()
    }
    
    public func setupParams(_ params: ButtonUIComponentParams) {
        setupParams(
            params,
            for: button
        )
    }
    
    private func setupActions() {
        button.addTarget(
            self,
            action: #selector(defaultAction),
            for: .touchUpInside
        )
    }
    
    @objc private func defaultAction() {
        settings.params.action?()
    }
}

extension ButtonUIComponent {
    
    public func setupStyleLookOSConfiguration(_ lookConfiguration: UIElementComponentLookOSConfiguration) {
        setupStyleLookOSConfiguration(
            lookConfiguration,
            for: button
        )
    }
    
    public func setupStyleLookOS(_ look: ButtonUIComponentStylePropertiesOSLook) {
        setupStyleLookOS(
            look,
            for: button
        )
    }
    
    public func setupStyleLookSystem(_ look: ButtonUIComponentStylePropertiesSystemLook) {
        setupStyleLookSystem(
            look,
            for: button
        )
    }
    
    private func styleLookButtonType(
        from lookType: UIElementComponentStylePropertiesLookType<
            ButtonUIComponentStylePropertiesOSLook,
            ButtonUIComponentStylePropertiesSystemLook
        >
    ) -> UIButton.ButtonType {
        switch lookType {
        case .os(let look):
            switch look.buttonStyleType {
            case .default:
                return .system
            case .infoLight:
                return .infoLight
            case .infoDark:
                return .infoDark
            case .detailDisclosure:
                return .detailDisclosure
            case .contactAdd:
                return .contactAdd
            case .close:
                return .close
            }
        case .system:
            return .custom
        }
    }
}

extension ButtonUIComponent {
    
    public func setupStyleLookParamsOS() {
        setupStyleLookParamsOS(for: button)
    }
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentStylePropertiesLookParams) {
        setupStyleLookParamsSystem(
            lookParams,
            for: button
        )
    }
}

extension ButtonUIComponent {
    
    public func setupStyleLayoutInitialization() {
        setupStyleLayoutInitialization(for: button)
    }
    
    public func setupStyleLayoutOS() {
        setupStyleLayout()
        
        setupStyleLayoutOS(for: button)
    }
    
    public func setupStyleLayoutSystem(_ layoutParams: ButtonUIComponentStylePropertiesLayoutParams) {
        setupStyleLayout()
        
        setupStyleLayoutSystem(
            layoutParams,
            for: button
        )
    }
    
    private func setupStyleLayout() {
        subviews.forEach { subview in
            subview.removeFromSuperview()
        }
        uie.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.topAnchor.constraint(equalTo: topAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
