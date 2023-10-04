//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUILayout:
    GUIElement {
    
    associatedtype Settings:
        GUILayoutSettings
    
    var settings: Settings {
        get
        set
    }
    
    init(
        settings: Settings
    )
    
    func setupParams()
}

extension GUILayout {
    
    func setupSettings() {
        setupParams()
    }
}
