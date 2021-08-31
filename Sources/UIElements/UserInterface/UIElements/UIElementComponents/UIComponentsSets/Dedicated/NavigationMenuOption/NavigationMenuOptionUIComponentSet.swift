//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuUIOptionComponentSet:
    UIView,
    UIComponentSet {
    
    private let optionButtonUI: ButtonUIComponent = .init()
    
    public let initialization: UIElementComponentInitialization = .init()
    
    public var settings: NavigationMenuOptionUIComponentSetSettings {
        didSet {
            setupSettings()
        }
    }
    
    public convenience init() {
        self.init(settings: .default)
    }
    
    public init(settings: NavigationMenuOptionUIComponentSetSettings) {
        self.settings = settings
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupNestedSettings() {
        optionButtonUI.settings = .init(
            params: .init(
                title: settings.params.title,
                action: settings.params.action
            ),
            styleType: settings.styleType
        )
    }
    
    public func setupParams(_ params: NavigationMenuOptionUIComponentSetParams) {}    
}

extension NavigationMenuUIOptionComponentSet {
    
    public func setupStyleLookOSConfiguration(_ lookConfiguration: UIElementComponentLookOSConfiguration) {
        let tempView: UIView = .init()
        backgroundColor = tempView.backgroundColor
        layer.borderColor = tempView.layer.borderColor
        layer.borderWidth = tempView.layer.borderWidth
    }
    
    public func setupStyleLookOS(_ look: EmptyUIComponentSetStylePropertiesOSLook) {}
    
    public func setupStyleLookSystem(_ look: NavigationMenuOptionUIComponentSetStylePropertiesSystemLook) {
        backgroundColor = look.backgroundColor
        layer.borderColor = look.borderColor.cgColor
        layer.borderWidth = look.borderWidth
    }
}

extension NavigationMenuUIOptionComponentSet {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentSetStylePropertiesLookParams) {}
}

extension NavigationMenuUIOptionComponentSet {
    
    public func setupStyleLayoutInitialization() {
        uie.addSubview(optionButtonUI)
        
        NSLayoutConstraint.activate([
            optionButtonUI.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor),
            optionButtonUI.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            optionButtonUI.centerXAnchor.constraint(equalTo: centerXAnchor),
            optionButtonUI.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
            optionButtonUI.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor),
            optionButtonUI.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(_ layoutParams: NavigationMenuOptionUIComponentSetStylePropertiesLayoutParams) {}
}
