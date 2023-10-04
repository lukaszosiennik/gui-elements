//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIElementComponentTypeStyleFactoryInterface:
    GUIElementStyleFactoryInterface {
    
    init(
        owner: GUIElementStyleFactoryInterface
    )
}
