//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIElementComponent: UIElement {
    
    func setupParams()
    
    func setupNestedStyle()
    
    func setupStyleLook()
    func setupStyleLayout()
}

extension UIElementComponent {
    
    func setupSettings() {
        setupParams()
        setupStyle()
    }
    
    func setupStyle() {
        setupNestedStyle()
        
        setupStyleLook()
        setupStyleLayout()
    }
}
