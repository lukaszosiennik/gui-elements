//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class PlaceholderUIComponent: UIView, UIComponent {
    
    private let heightConstraintID = "height"
    
    public let initialization = UIElementComponentInitialization()
    
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
}

extension PlaceholderUIComponent {
    
    public func setupStyleLookOS() {
        let tempView = UIView()
        backgroundColor = tempView.backgroundColor
    }
    
    public func setupStyleLookSystem(_ look: PlaceholderUIComponentStylePropertiesLook) {
        backgroundColor = look.backgroundColor
    }
}

extension PlaceholderUIComponent {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentStylePropertiesLookParams) {}
}

extension PlaceholderUIComponent {
    
    public func setupStyleLayoutInitialization() {}
    
    public func setupStyleLayoutOS() {
        removeConstraintIfExists(with: heightConstraintID)
    }
    
    public func setupStyleLayoutSystem(_ layoutParams: PlaceholderUIComponentStylePropertiesLayoutParams) {
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
