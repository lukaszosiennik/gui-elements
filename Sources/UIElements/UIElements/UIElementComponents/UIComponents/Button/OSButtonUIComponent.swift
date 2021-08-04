//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class OSButtonUIComponent: UIView, ButtonUIComponentInterface {
    
    public typealias Action = () -> Void
    
    private(set) var button = UIButton(type: .custom)
    
    var action: Action?
    
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
    
    func setup() {
        setupSettings()
    }
    
    func setupSettings() {
        self.button = UIButton(type: settings.stylePack.style.properties == nil ? .system : .custom)
        
        setupParams()
        setupStyle()
        
        setupActions()
    }
    
    public func setupParams() {
        setupParams(for: button)
    }
    
    public func setupStyleLook() {
        setupStyleLook(for: button)
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
        print("OSButtonUIComponent \"\(settings.params.title)\" button action")
        
        action?()
    }
}
