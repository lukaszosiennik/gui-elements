//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public class GUIComponentGroupTypeStyleFactory<
    Paletts:
        SystemGUIComponentGroupPalettsInterface
>:
    GUIElementComponentTypeStyleFactory<
        Paletts
    > {
    
    typealias ColorPalette =
        Paletts.ColorPalette
    typealias FontPalette =
        Paletts.FontPalette
    typealias ConstantPalette =
        Paletts.ConstantPalette
}
