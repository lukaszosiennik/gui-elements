//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class PlaceholderUIComponent:
    UIView,
    UIComponent {
    
    private let heightConstraintID = "height"
    
    public let initialization = UIElementComponentInitialization()
    
    public var settings: PlaceholderUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    public convenience init() {
        self.init(settings: .default)
    }
    
    public init(settings: PlaceholderUIComponentSettings) {
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
    
    public func setupStyleLookOSConfiguration(_ lookConfiguration: UIElementComponentLookOSConfiguration) {
        let tempView = UIView()
        backgroundColor = settings.params.look?.color ?? tempView.backgroundColor
    }
    
    public func setupStyleLookOS(_ look: EmptyUIComponentStylePropertiesOSLook) {}
    
    public func setupStyleLookSystem(_ look: PlaceholderUIComponentStylePropertiesSystemLook) {}
}

extension PlaceholderUIComponent {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentStylePropertiesLookParams) {}
}

extension PlaceholderUIComponent {
    
    public func setupStyleLayoutInitialization() {}
    
    public func setupStyleLayoutOS() {
        if let height = settings.params.layoutParams?.height {
            setupStyleLayout(height)
            return
        }
        
        uie.removeConstraintIfExists(with: heightConstraintID)
    }
    
    public func setupStyleLayoutSystem(_ layoutParams: PlaceholderUIComponentStylePropertiesLayoutParams) {}
    
    private func setupStyleLayout(_ height: CGFloat) {
        if let heightConstraint = uie.constraint(with: heightConstraintID) {
            heightConstraint.constant = height
        } else {
            let heightConstraint = heightAnchor.constraint(equalToConstant: height)
            heightConstraint.identifier = heightConstraintID
            
            NSLayoutConstraint.activate([
                heightConstraint,
            ])
        }
    }
}
