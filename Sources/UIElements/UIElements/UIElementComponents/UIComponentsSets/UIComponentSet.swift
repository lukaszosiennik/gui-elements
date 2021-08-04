//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIComponentSet: UIElementComponent {
    
    associatedtype UIComponentSetSettingsType: UIComponentSetSettings
    
    var settings: UIComponentSetSettingsType { get set }
    
    init(settings: UIComponentSetSettingsType)
}
