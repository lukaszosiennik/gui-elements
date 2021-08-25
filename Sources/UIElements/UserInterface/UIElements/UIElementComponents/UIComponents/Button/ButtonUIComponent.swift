//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class ButtonUIComponent: UIView, ButtonUIComponentInterface {
    
    private(set) var button = UIButton(type: .custom)
    
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
    
    public func setupSettings() {
        let buttonType: UIButton.ButtonType
        if settings.styleType.isOS {
            if case let .os(look) = settings.styleProperties.lookSort {
                switch look.buttonStyleType {
                case .default:
                    buttonType = .system
                case .infoLight:
                    buttonType = .infoLight
                case .infoDark:
                    buttonType = .infoDark
                case .detailDisclosure:
                    buttonType = .detailDisclosure
                case .contactAdd:
                    buttonType = .contactAdd
                case .close:
                    buttonType = .close
                }
            } else {
                buttonType = .custom
            }
        } else {
            buttonType = .custom
        }
        
        self.button = UIButton(type: buttonType)
        
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
        setupParams(params, for: button)
    }
    
    private func setupActions() {
        button.addTarget(self, action: #selector(defaultAction), for: .touchUpInside)
    }
    
    @objc private func defaultAction() {
        settings.params.action?()
    }
}

extension ButtonUIComponent {
    
    public func setupStyleLookOS(_ look: BasicOSUIElementComponentStylePropertiesLook) {
        setupStyleLookOS(look, for: button)
    }
    
    public func setupStyleLookSystem(_ look: ButtonUIComponentStylePropertiesLook) {
        setupStyleLookSystem(look, for: button)
    }
}

extension ButtonUIComponent {
    
    public func setupStyleLookParamsOS() {
        setupStyleLookParamsOS(for: button)
    }
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentStylePropertiesLookParams) {
        setupStyleLookParamsSystem(lookParams, for: button)
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
        
        setupStyleLayoutSystem(layoutParams, for: button)
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
