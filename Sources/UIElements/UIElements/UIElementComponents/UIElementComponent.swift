//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponent: UIElement {
    
    func setupNestedSettings()
    
    func setupParams()
    
    func setupStyleLook()
    func setupStyleLayout()
}

extension UIElementComponent {
    
    func setupSettings() {
        setupNestedSettings()
        
        setupParams()
        setupStyle()
    }
    
    func setupStyle() {
        setupStyleLook()
        setupStyleLayout()
    }
}
