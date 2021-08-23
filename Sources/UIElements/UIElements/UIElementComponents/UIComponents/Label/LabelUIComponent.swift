//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class LabelUIComponent: UILabel, UIComponent {

    public let initialization = UIElementComponentInitialization()
    
    public var settings: LabelUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    public convenience init() {
        self.init(settings: .default)
    }
    
    public init(settings: LabelUIComponentSettings) {
        self.settings = settings
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupNestedSettings() {}
    
    public func setupParams(_ params: LabelUIComponentParams) {
        text = params.text
    }
}

extension LabelUIComponent {
    
    public func setupStyleLookOS(_ lookUserFriendly: UIElementComponentStylePropertiesLookUserFriendlyInterface) {}
    
    public func setupStyleLookSystem(_ look: LabelUIComponentStylePropertiesLook) {}
}

extension LabelUIComponent {
    
    public func setupStyleLookParamsOS() {
        let tempLabel = UILabel()
        numberOfLines = tempLabel.numberOfLines
    }
    
    public func setupStyleLookParamsSystem(_ lookParams: LabelUIComponentStylePropertiesLookParams) {
        numberOfLines = lookParams.linesNumber
    }
}

extension LabelUIComponent {
    
    public func setupStyleLayoutInitialization() {}
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(_ layoutParams: LabelUIComponentStylePropertiesLayoutParams) {}
}
