//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class SelectionListOptionUIButton: SelectionListOption<UIButton> {
    
    public init(setupMe: ((UIButton) -> Void)? = nil) {
        super.init(button: UIButton(type: .system))
        
        setup(setupMe: setupMe)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(setupMe: ((UIButton) -> Void)?) {
        setupMe?(button)
    }
    
    override func setupActions() {
        super.setupActions()
        
        button.addTarget(self, action: #selector(defaultAction), for: .touchUpInside)
    }
    
    @objc private func defaultAction() {
        action?()
    }
}
