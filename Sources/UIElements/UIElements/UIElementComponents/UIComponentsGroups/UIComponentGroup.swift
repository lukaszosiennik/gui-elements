//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIComponentGroup: UIElementComponent {
    
    associatedtype UIComponentGroupSettingsType: UIComponentGroupSettings
    
    var settings: UIComponentGroupSettingsType { get set }
    
    init(settings: UIComponentGroupSettingsType)
}
