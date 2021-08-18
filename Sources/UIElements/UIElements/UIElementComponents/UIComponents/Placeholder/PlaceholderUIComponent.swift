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
    
    public func setupParams(_ params: PlaceholderUIComponentParams) {}
    
    public func setupStyleLook(_ look: PlaceholderUIComponentStylePropertiesLook?) {
        guard let look = look else {
            return
        }
        
        backgroundColor = look.backgroundColor
    }
    
    public func setupStyleLookParams(_ lookParams: EmptyUIComponentStylePropertiesLookParams?) {
        guard let lookParams = lookParams else {
            return
        }
    }
    
    public func setupStyleLayout(_ layoutParams: PlaceholderUIComponentStylePropertiesLayoutParams?) {
        if initialization {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        guard let layoutParams = layoutParams else {
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
