//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIComponentScreen: UIElementComponent {
    
    associatedtype UIComponentScreenSettingsType: UIComponentScreenSettings
    
    var settings: UIComponentScreenSettingsType { get set }
    
    init(settings: UIComponentScreenSettingsType)
}
