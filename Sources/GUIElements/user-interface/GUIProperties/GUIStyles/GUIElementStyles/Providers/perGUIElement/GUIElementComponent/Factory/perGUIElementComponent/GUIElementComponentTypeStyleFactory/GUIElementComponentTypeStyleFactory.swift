//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public class GUIElementComponentTypeStyleFactory<
    Paletts:
        SystemGUIElementPalettsInterface
>:
    GUIElementComponentTypeStyleFactoryInterface {
    
    public let styleType: GUIStyleType
    
    public required init(
        owner: GUIElementStyleFactoryInterface
    ) {
        self.styleType = owner.styleType
    }
}
