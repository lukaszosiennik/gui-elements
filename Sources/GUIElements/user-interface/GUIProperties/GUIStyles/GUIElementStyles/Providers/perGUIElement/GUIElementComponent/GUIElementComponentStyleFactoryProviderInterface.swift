//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIElementComponentStyleFactoryProviderInterface {
    
    static var currentFactory: GUIElementComponentStyleFactoryInterface? {
        get
    }
    
    static func factory(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyleFactoryInterface?
}
