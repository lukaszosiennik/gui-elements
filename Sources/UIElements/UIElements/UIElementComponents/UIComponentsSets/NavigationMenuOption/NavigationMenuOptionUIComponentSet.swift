//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuUIOptionComponentSet: UIView, UIComponentSet {
    
    private let optionButtonUI = OSButtonUIComponent()
    
    public var initialization: Bool = false
    
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
    
    public func setupStyleLook(_ look: NavigationMenuOptionUIComponentSetStylePropertiesLook?) {
        guard let look = look else {
            let tempView = UIView()
            backgroundColor = tempView.backgroundColor
            layer.borderColor = tempView.layer.borderColor
            layer.borderWidth = tempView.layer.borderWidth
            return
        }
        
        backgroundColor = look.backgroundColor
        layer.borderColor = look.borderColor.cgColor
        layer.borderWidth = look.borderWidth
    }
    
    public func setupStyleLookParams(_ lookParams: EmptyUIComponentSetStylePropertiesLookParams?) {
        guard let lookParams = lookParams else {
            return
        }
    }
    
    public func setupStyleLayout(_ layoutParams: NavigationMenuOptionUIComponentSetStylePropertiesLayoutParams?) {
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
        
        guard let layoutParams = layoutParams else {
            return
        }
    }
}
