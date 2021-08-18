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
    
    public func setupParams(_ params: LabelUIComponentParams) {
        text = params.text
    }
    
    public func setupStyleLook(_ look: LabelUIComponentStylePropertiesLook?) {
        guard let look = look else {
            return
        }
    }

    public func setupStyleLookParams(_ lookParams: LabelUIComponentStylePropertiesLookParams?) {
        guard let lookParams = lookParams else {
            let tempLabel = UILabel()
            numberOfLines = tempLabel.numberOfLines
            return
        }

        numberOfLines = lookParams.linesNumber
    }

    public func setupStyleLayout(_ layoutParams: LabelUIComponentStylePropertiesLayoutParams?) {
        if initialization {
            translatesAutoresizingMaskIntoConstraints = false
        }

        guard let layoutParams = layoutParams else {
            return
        }
    }
}
