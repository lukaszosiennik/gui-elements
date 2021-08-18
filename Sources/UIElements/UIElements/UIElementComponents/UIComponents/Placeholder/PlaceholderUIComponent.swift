//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class PlaceholderUIComponent: UIView, UIComponent {
    
    private let heightConstraintID = "height"
    
    public var initialization: Bool = false
    
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
    
    public func setupNestedSettings() {}
    
    public func setupParams() {}
    
    public func setupStyleLook() {
        guard let look = settings.styleProperties?.look else {
            return
        }
        
        backgroundColor = look.backgroundColor
    }
    
    public func setupStyleLookParams() {
        guard let lookParams = settings.styleProperties?.lookParams else {
            return
        }
    }
    
    public func setupStyleLayout() {
        if initialization {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        guard let layoutParams = settings.styleProperties?.layoutParams else {
            removeConstraintIfExists(with: heightConstraintID)
            return
        }
        
        if let heightConstraint = constraint(with: heightConstraintID) {
            heightConstraint.constant = layoutParams.height
        } else {
            let heightConstraint = heightAnchor.constraint(equalToConstant: layoutParams.height)
            heightConstraint.identifier = heightConstraintID
            
            NSLayoutConstraint.activate([
                heightConstraint,
            ])
        }
    }
}
