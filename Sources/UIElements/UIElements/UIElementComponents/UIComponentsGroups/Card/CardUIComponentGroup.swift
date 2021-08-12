//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class CardUIComponentGroup: UIView, UIComponentGroup {
    
    private var initialization: Bool = false
    
    public var settings: CardUIComponentGroupSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: CardUIComponentGroupSettings = .default) {
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
    
    public func setupStyleLook() {}
    
    public func setupStyleLayout() {}
}
