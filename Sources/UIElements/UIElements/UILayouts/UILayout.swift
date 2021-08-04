//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UILayout: UIElement {
    
    associatedtype UILayoutSettingsType: UILayoutSettings
    
    var settings: UILayoutSettingsType { get set }
    
    init(settings: UILayoutSettingsType)
    
    func setupParams()
}

extension UILayout {
    
    func setupSettings() {
        setupParams()
    }
}
