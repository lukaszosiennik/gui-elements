//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class LabelUIComponent: UILabel, UIComponent {
    
    public var initialization: Bool = false
    
    public var settings: LabelUIComponentSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: LabelUIComponentSettings = .default) {
        self.settings = settings
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupNestedSettings() {}
    
    public func setupParams() {
        text = settings.params.text
    }
    
    public func setupStyleLook() {
        guard let look = settings.styleProperties?.look else {
            return
        }
    }
    
    public func setupStyleLookParams() {
        guard let lookParams = settings.styleProperties?.lookParams else {
            let tempLabel = UILabel()
            numberOfLines = tempLabel.numberOfLines
            return
        }
        
        numberOfLines = lookParams.linesNumber
    }
    
    public func setupStyleLayout() {
        if initialization {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        guard let layoutParams = settings.styleProperties?.layoutParams else {
            return
        }
    }
}
