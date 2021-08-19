//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class OSButtonUIComponent: UIView, ButtonUIComponentInterface {
    
    private(set) var button = UIButton(type: .custom)
    
    public var initialization: Bool = false
    
    public var settings: ButtonUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: ButtonUIComponentSettings = .default) {
        self.settings = settings
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSettings() {
        self.button = UIButton(type: settings.styleProperties == nil ? .system : .custom)
        
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

extension OSButtonUIComponent {
    
    public func setupStyleLookOS() {
        setupStyleLookOS(for: button)
    }
    
    public func setupStyleLookSystem(_ look: ButtonUIComponentStylePropertiesLook) {
        setupStyleLookSystem(look, for: button)
    }
}

extension OSButtonUIComponent {
    
    public func setupStyleLookParamsOS() {
        setupStyleLookParamsOS(for: button)
    }
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentStylePropertiesLookParams) {
        setupStyleLookParamsSystem(lookParams, for: button)
    }
}

extension OSButtonUIComponent {
    
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
        add(subview: button)
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.topAnchor.constraint(equalTo: topAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
