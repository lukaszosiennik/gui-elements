//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIComponent: UIElementComponent {
    
    associatedtype UIComponentSettingsType: UIComponentSettings
    
    var settings: UIComponentSettingsType { get set }
    
    init(settings: UIComponentSettingsType)
}

extension UIComponent {
    
    func setupNestedStyle() {}
}
