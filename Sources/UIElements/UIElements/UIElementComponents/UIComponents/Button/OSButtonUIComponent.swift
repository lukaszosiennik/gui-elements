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
        setupParams(for: button)
        
        setupActions()
    }
    
    public func setupStyleLook() {
        setupStyleLook(for: button)
    }
    
    public func setupStyleLookParams() {
        setupStyleLookParams(for: button)
    }
    
    public func setupStyleLayout() {
        subviews.forEach { subview in
            subview.removeFromSuperview()
        }
        addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.topAnchor.constraint(equalTo: topAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
        setupStyleLayout(for: button)
    }
    
    private func setupActions() {
        button.addTarget(self, action: #selector(defaultAction), for: .touchUpInside)
    }
    
    @objc private func defaultAction() {
        settings.params.action?()
    }
}
