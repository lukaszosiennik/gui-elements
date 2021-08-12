//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class PlaceholderUIComponent: UIView, UIComponent {
    
    private let heightConstraintID = "height"
    
    private var initialization: Bool = false
    
    public var settings: PlaceholderUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: PlaceholderUIComponentSettings = .default) {
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
    
    public func setupNestedSettings() {}
    
    public func setupParams() {}
    
    public func setupStyleLook() {
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        backgroundColor = styleProperties.look.backgroundColor
    }
    
    public func setupStyleLayout() {
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        if let heightConstraint = constraint(with: heightConstraintID, from: self) {
            heightConstraint.constant = styleProperties.layoutParams.height
        } else {
            let heightConstraint = heightAnchor.constraint(equalToConstant: styleProperties.layoutParams.height)
            heightConstraint.identifier = heightConstraintID
            
            NSLayoutConstraint.activate([
                heightConstraint,
            ])
        }
    }
}

extension PlaceholderUIComponent {
    
    private func constraint(with identifier: String, from view: UIView) -> NSLayoutConstraint? {
        return view.constraints.first { $0.identifier == identifier }
    }
}
