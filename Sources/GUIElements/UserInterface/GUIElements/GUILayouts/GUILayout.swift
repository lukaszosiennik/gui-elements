//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUILayout:
    GUIElement {
    
    associatedtype GUILayoutSettingsType:
        GUILayoutSettings
    
    var settings: GUILayoutSettingsType {
        get
        set
    }
    
    init(
        settings: GUILayoutSettingsType
    )
    
    func setupParams()
}

extension GUILayout {
    
    func setupSettings() {
        setupParams()
    }
}
