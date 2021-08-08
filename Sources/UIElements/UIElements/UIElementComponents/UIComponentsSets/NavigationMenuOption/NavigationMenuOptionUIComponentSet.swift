//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuUIOptionComponentSet: UIView, UIComponentSet, NavigationMenuOptionUIElementComponentInterface {
    
    private let optionButton = OSButtonUIComponent()
    
    public var action: Action?
    
    public var settings: NavigationMenuOptionUIComponentSetSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: NavigationMenuOptionUIComponentSetSettings = .default) {
        self.settings = settings
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupSettings()
    }
    
    public func setupNestedSettings() {
        optionButton.settings = .init(
            params: .init(title: settings.params.title),
            styleType: settings.styleType
        )
    }
    
    public func setupParams() {
        setupActions()
    }
    
    public func setupStyleLook() {
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        backgroundColor = styleProperties.look.backgroundColor
        layer.borderWidth = styleProperties.look.borderWidth
        layer.borderColor = styleProperties.look.borderColor.cgColor
    }
    
    public func setupStyleLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(optionButton)
        
        optionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            optionButton.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor),
            optionButton.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            optionButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            optionButton.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
            optionButton.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor),
            optionButton.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
    }
    
    private func setupActions() {
        optionButton.action = { [weak self] in
            self?.action?()
        }
    }
}
