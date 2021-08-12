//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuUIOptionComponentSet: UIView, UIComponentSet {
    
    private let optionButtonUI = OSButtonUIComponent()
    
    private var initialization: Bool = false
    
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
        initialization = true
        setupSettings()
        initialization = false
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
    
    public func setupParams() {}
    
    public func setupStyleLook() {
        guard let styleProperties = settings.stylePack.style.properties else {
            let tempView = UIView()
            backgroundColor = tempView.backgroundColor
            layer.borderColor = tempView.layer.borderColor
            layer.borderWidth = tempView.layer.borderWidth
            return
        }
        
        backgroundColor = styleProperties.look.backgroundColor
        layer.borderColor = styleProperties.look.borderColor.cgColor
        layer.borderWidth = styleProperties.look.borderWidth
    }
    
    public func setupStyleLayout() {
        if initialization {
            translatesAutoresizingMaskIntoConstraints = false
            
            addSubview(optionButtonUI)
            
            NSLayoutConstraint.activate([
                optionButtonUI.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor),
                optionButtonUI.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
                optionButtonUI.centerXAnchor.constraint(equalTo: centerXAnchor),
                optionButtonUI.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
                optionButtonUI.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor),
                optionButtonUI.centerYAnchor.constraint(equalTo: centerYAnchor),
            ])
        }
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
    }
}
